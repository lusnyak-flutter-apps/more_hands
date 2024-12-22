import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHGradientButton extends StatelessWidget {
  const MHGradientButton({
    super.key,
    this.onPressed,
    required this.title,
    this.gradientColors,
    this.icon,
  });

  final VoidCallback? onPressed;
  final String title;
  final List<Color>? gradientColors;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {

    final text = Text(title, style: buttonTextStyles,);
    return Container(
      height: 48.h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
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
        ).paddingSymmetric(horizontal: 24.w, vertical: 12.h) : text.paddingSymmetric(horizontal: 24.w, vertical: 12.h),
      ),
    );
  }
}
