import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uikit/uikit.dart';

class MHRoundedContainer extends StatelessWidget {
  const MHRoundedContainer(
      {super.key,
      required this.child,
      this.alignment,
      this.borderGradientColors,
      this.borderColor});

  final Widget child;
  final AlignmentGeometry? alignment;
  final List<Color>? borderGradientColors;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: MHColors.darkerGrayColor,
        borderRadius: BorderRadius.circular(16.r),
        border: borderGradientColors != null && borderGradientColors!.isNotEmpty
            ?   GradientBoxBorder(
                gradient: LinearGradient(
                    colors: borderGradientColors!,),
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
