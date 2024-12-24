import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

import 'mh_bottom_naviagtion_item.dart';

class MHBottomNavigationBar extends StatefulWidget {
  const MHBottomNavigationBar({
    super.key,
    this.onTap,
    required this.currentIndex,
    required this.items,
    this.autoImplyLeading = false,
  });

  final ValueChanged<int>? onTap;
  final int currentIndex;
  final List<MHBottomNavigationBarItem> items;
  final bool autoImplyLeading;

  @override
  State<MHBottomNavigationBar> createState() => _MHBottomNavigationBarState();
}

class _MHBottomNavigationBarState extends State<MHBottomNavigationBar> {
  Widget barItem({
    required Widget icon,
    required Widget activeIcon,
    required String label,
    bool selected = false,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      overlayColor: const WidgetStatePropertyAll(MHColors.grayColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          selected ? activeIcon : icon,
          2.h.heightBox,
          selected
              ? MHGradientText(
                  text: label,
                  style: body10MediumStyle,
                )
              : Text(label, style: body10MediumStyle)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 64.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 48.0, sigmaY: 48.0),
            child: Container(
              width: 201.w, // widget.items.length * 72.w,
              height: 60.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: MHColors.grayColorOpacity38,
                borderRadius: BorderRadius.circular(30.r),
                border: Border.all(color: MHColors.grayColor98, width: 1.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widget.items
                    .map(
                      (item) => barItem(
                        activeIcon: item.activeIcon,
                        icon: item.icon,
                        label: item.label,
                        selected: widget.currentIndex == item.index,
                        onTap: () {
                          widget.onTap?.call(item.index);
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ).alignAtBottomCenter(),
      ),
    );
  }
}
