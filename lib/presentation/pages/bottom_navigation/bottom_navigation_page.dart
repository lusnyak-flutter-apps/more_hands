import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_naviagtion_item.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_navigation_bar.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      lazyLoad: true,
      homeIndex: 0,
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
        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              child,
              MHBottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: (int index) {
                  if(index != 1) {
                    tabsRouter.setActiveIndex(index);
                  } else {
                    context.router.push(const RequestsRoute());
                  }
                 },
                items: [
                  MHBottomNavigationBarItem(
                      label: context.localized.home,
                      icon: MoreHandsAssets.icons.home.svg(height: 20.r),
                      activeIcon: MoreHandsAssets.icons.homeYellow.svg(height: 20.r),
                      index: 0),
                  MHBottomNavigationBarItem(
                      label: context.localized.requests,
                      icon: MoreHandsAssets.icons.chat.svg(height: 20.r),
                      activeIcon: MoreHandsAssets.icons.chatYellow.svg(height: 20.r),
                      index: 1),
                  MHBottomNavigationBarItem(
                      label: context.localized.profile,
                      icon: MoreHandsAssets.icons.user.svg(height: 20.r),
                      activeIcon: MoreHandsAssets.icons.userYellow.svg(height: 20.r),
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
