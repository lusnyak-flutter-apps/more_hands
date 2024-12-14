import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ServicesListPage extends StatelessWidget {
  const ServicesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ServicesListView();
  }
}

class _ServicesListView extends StatefulWidget {
  const _ServicesListView();

  @override
  State<_ServicesListView> createState() => _ServicesListViewState();
}

class _ServicesListViewState extends State<_ServicesListView> {
  String? selected;
  List<int> expanded = <int>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.next,
        action: () {
          context.router.push(const ServiceDetailsRoute());
        },
      ).paddingOnly(bottom: 16.h),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 24.w,
        title: Text(
          context.localized.whatYouCanGiveToTheWorld,
          style: body28SemiBoldStyle,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MHSearchField(),
            ListView.builder(
              padding: EdgeInsets.only(bottom: 56.h, top: 16.h),
              itemBuilder: (itemContext, index) {
                return ExpansionTile(
                  trailing: expanded.contains(index)
                      ? const Icon(Icons.expand_more_rounded)
                      : const Icon(Icons.chevron_right_rounded),
                  onExpansionChanged: (isExpanded) {
                    if (isExpanded) {
                      expanded.add(index);
                    } else {
                      expanded.remove(index);
                    }
                    if (mounted) setState(() {});
                  },
                  initiallyExpanded: expanded.contains(index),
                  collapsedShape: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: MHColors.grayColor, width: 1.0),
                  ),
                  title: Text(
                    "Service title $index",
                    style: body16MediumStyle,
                  ),
                  children: [
                    for (var i = 0; i < 4; i++)
                      ListTile(
                        onTap: () {
                          if (mounted) {
                            setState(() {
                              selected = "Service $index subService title $i";
                            });
                          }
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                        shape: i < 3
                            ? const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: MHColors.grayColor))
                            : null,
                        title: Text(
                          "Service $index subService title $i",
                          style: body16MediumStyle,
                        ),
                        trailing:
                            selected == "Service $index subService title $i"
                                ? MoreHandsAssets.icons.check.svg()
                                : null,
                      )
                  ],
                );
              },
              itemCount: 20,
            ).expanded()
          ],
        ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
      ),
    );
  }
}
