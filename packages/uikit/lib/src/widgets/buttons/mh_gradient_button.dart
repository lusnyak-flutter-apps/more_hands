import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHGradientButton extends StatelessWidget {
  const MHGradientButton({
    super.key,
    this.onPressed,
    required this.title,
    this.gradientColors,
    this.icon,   this.horizontalPadding = 24,   this.verticalPadding = 12, this.height = 48,
  });

  final VoidCallback? onPressed;
  final String title;
  final List<Color>? gradientColors;
  final Widget? icon;
  final double horizontalPadding;
  final double verticalPadding;
  final double? height;
  @override
  Widget build(BuildContext context) {

    final text = Text(title, style: buttonTextStyles,);
    return Container(
      height: (height ?? 48).h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular((height ?? 48).r),
        gradient: LinearGradient(
          colors: gradientColors ?? [MHColors.yellowColor, MHColors.amberColor],
        ),
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        shape: const StadiumBorder(),
        highlightColor: MHColors.amberColor,
        child: icon != null ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            icon!,
            4.w.widthBox,
            text,
          ],
        ).paddingSymmetric(horizontal: horizontalPadding.w, vertical: verticalPadding.h) : text.paddingSymmetric(horizontal: horizontalPadding.w, vertical: verticalPadding.h),
      ),
    );
  }
}
