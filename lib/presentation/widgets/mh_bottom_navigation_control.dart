import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:uikit/uikit.dart';

class MHBottomNavigationControl extends StatelessWidget {
  const MHBottomNavigationControl({
    super.key,
    required this.buttonTitle,
    this.maybePop,
    this.action,
    this.buttonIcon,
    this.actionLoading = false,
    this.horizontalSpacing = 24.0,
  });

  final String buttonTitle;
  final Widget? buttonIcon;
  final VoidCallback? maybePop;
  final VoidCallback? action;
  final bool actionLoading;
  final double horizontalSpacing;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: maybePop ?? context.router.maybePop,
            icon: MoreHandsAssets.icons.left.svg().paddingAll(6.h),
          ),
          8.w.widthBox,
          action != null
              ? MHGradientButton(
                  title: buttonTitle,
                  icon: buttonIcon,
                  loading: actionLoading,
                  onPressed: action,
                ).expanded()
              : MHOutlinedButton(
                  title: buttonTitle,
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                      foregroundColor: MHColors.whiteColor),
                ).expanded(),
        ],
      ).paddingSymmetric(horizontal: horizontalSpacing.w, vertical: 8.h),
    );
  }
}
