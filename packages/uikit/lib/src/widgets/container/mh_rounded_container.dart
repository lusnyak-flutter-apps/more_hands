import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uikit/uikit.dart';

class MHRoundedContainer extends StatelessWidget {
  const MHRoundedContainer({
    super.key,
      this.child,
    this.alignment,
    this.borderGradientColors,
    this.borderColor,
    this.height,
    this.width,
    this.color, this.borderRadius,
  });

  final Widget? child;
  final AlignmentGeometry? alignment;
  final List<Color>? borderGradientColors;
  final Color? borderColor;
  final double? height;
  final double? width;
  final Color? color;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: color ?? MHColors.darkerGrayColor,
        borderRadius: BorderRadius.circular((borderRadius ?? 16).r),
        border: borderGradientColors != null && borderGradientColors!.isNotEmpty
            ? GradientBoxBorder(
                gradient: LinearGradient(
                  colors: borderGradientColors!,
                ),
                width: 1.0,
              )
            : borderColor != null
                ? Border.all(color: borderColor!, width: 1.0)
                : null,
      ),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}
