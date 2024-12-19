import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:uikit/uikit.dart';

class MHBottomNavigationControl extends StatelessWidget {
  const MHBottomNavigationControl({
    super.key,
    required this.buttonTitle,
    this.maybePop,
    this.action, this.buttonIcon,
  });

  final String buttonTitle;
  final Widget? buttonIcon;
  final VoidCallback? maybePop;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: maybePop ?? context.router.maybePop,
              icon: MoreHandsAssets.icons.left.svg().paddingAll(6.h)),
          8.w.widthBox,
          MHGradientButton(
            title: buttonTitle,
            icon: buttonIcon,
            onPressed: action,
          ).expanded()
        ],
      ).paddingSymmetric(horizontal: 24.w, vertical: 8.h),
    );
  }
}
