import 'package:flutter/material.dart';
 import 'package:uikit/uikit.dart';

class MHCircleGradientContainer extends StatelessWidget {
  const MHCircleGradientContainer({
    super.key,
    this.child,
    this.gradientColors,
    this.size,
  });

  final Widget? child;
  final List<Color>? gradientColors;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment:   Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: gradientColors ?? [MHColors.yellowColor, MHColors.amberColor],
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: child,
    );
  }
}