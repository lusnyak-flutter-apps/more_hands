import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_naviagtion_item.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_navigation_bar.dart';
import 'package:uikit/uikit.dart';

class MHBottomTabbar extends StatelessWidget {
  const MHBottomTabbar({
    super.key,
    this.onTap,
    required this.currentIndex,
    required this.items,
    this.maybePop,
  });

  final ValueChanged<int>? onTap;
  final int currentIndex;
  final List<MHBottomNavigationBarItem> items;
  final VoidCallback? maybePop;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: maybePop ?? context.router.maybePop,
            icon: MoreHandsAssets.icons.left.svg(height: 24.h).paddingAll(10.h),
          ),
          8.w.widthBox,
          MHBottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            items: items,
          )
        ],
      ).paddingSymmetric(horizontal: 24.w, vertical: 8.h),
    );
  }
}
