import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHGradientButton extends StatelessWidget {
  const MHGradientButton({
    super.key,
    this.onPressed,
    required this.title,
    this.gradientColors,
  });

  final VoidCallback? onPressed;
  final String title;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: LinearGradient(
          colors: gradientColors ?? [MHColors.yellowColor, MHColors.amberColor],
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(32.r),
        overlayColor: WidgetStateProperty.all(MHColors.amberColor),
        child: Text(title, style: buttonTextStyles,).paddingSymmetric(horizontal: 24.w, vertical: 12.h).toCenter(),
      ),
    );
  }
}
