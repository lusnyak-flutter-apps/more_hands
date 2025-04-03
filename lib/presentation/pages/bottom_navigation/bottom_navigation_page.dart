import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/local/token_storage/token_storage.dart';
import 'package:more_hands/data/repository/requests_repository.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_naviagtion_item.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_navigation_bar.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int unseenCount = 0;
  bool openProfileInFirst = false;

  @override
  void initState() {
    super.initState();
    checkUserFirstLogin();
    getUnseenCounts();
  }


  Future<void> checkUserFirstLogin() async {
    await getIt<TokenStorage>().readToken().then((onValue) async {
      final userExist = onValue?.existingUser ?? false;
      if (mounted) {
        setState(() {
          openProfileInFirst = !userExist;
        });
      }
      if (userExist == false) {
        await getIt<TokenStorage>()
            .saveToken(onValue!.copyWith(existingUser: true));
      }
    });
  }

  Future<void> getUnseenCounts() async {
    final (receiverUnseenCount, senderUnseenCount) =
        await getIt<RequestsRepository>().getUnseenRequestsCount();
    debugPrint(receiverUnseenCount.toString());
    debugPrint(senderUnseenCount.toString());
    if (mounted) {
      setState(() {
        unseenCount = receiverUnseenCount + senderUnseenCount;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      lazyLoad: true,
      homeIndex: 0,
      // widget.homeIndex,
      routes: const [
        HomeRoute(),
        RequestsTapRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (tabsContext, child) {
        final tabsRouter = AutoTabsRouter.of(tabsContext);
        if (openProfileInFirst == true &&
            tabsContext.mounted &&
            context.mounted) {
          Future.delayed(const Duration(milliseconds: 300), () {
            if(mounted) {
              setState(() {
                openProfileInFirst = false;
              });
            }
            tabsRouter.setActiveIndex(2);
          });
        }
        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              child,
              MHBottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: (int index) {
                  if (index != 1) {
                    tabsRouter.setActiveIndex(index);
                  } else {
                    context.router.push(const RequestsRoute());
                  }
                },
                items: [
                  MHBottomNavigationBarItem(
                      label: context.localized.home,
                      icon: MoreHandsAssets.icons.home.svg(height: 20.r),
                      activeIcon:
                          MoreHandsAssets.icons.homeYellow.svg(height: 20.r),
                      index: 0),
                  MHBottomNavigationBarItem(
                      label: context.localized.requests,
                      icon: MoreHandsAssets.icons.chat.svg(height: 20.r),
                      activeIcon:
                          MoreHandsAssets.icons.chatYellow.svg(height: 20.r),
                      badgeValue: unseenCount != 0 ? 1 : 0,
                      index: 1),
                  MHBottomNavigationBarItem(
                      label: context.localized.profile,
                      icon: MoreHandsAssets.icons.user.svg(height: 20.r),
                      activeIcon:
                          MoreHandsAssets.icons.userYellow.svg(height: 20.r),
                      index: 2),
                ],
              ),
            ],
          ),
          // bottomNavigationBar: MHBottomNavigationBar(
          //   currentIndex: tabsRouter.activeIndex,
          //   onTap: tabsRouter.setActiveIndex,
          // ),
        );
      },
    );
  }
}
