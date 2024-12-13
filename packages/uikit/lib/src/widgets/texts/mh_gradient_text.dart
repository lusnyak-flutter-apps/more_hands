import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHGradientText extends StatelessWidget {
  final String text;
  final List<Color>? gradientColors;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextStyle? style;

  const MHGradientText({
    super.key,
    this.gradientColors,
    required this.text,
    this.textAlign,
    this.maxLines,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (final Rect bounds) {
        return LinearGradient(
          begin: Alignment.centerLeft,
          colors: gradientColors ?? [MHColors.yellowColor, MHColors.amberColor],
          end: Alignment.centerRight,
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: style ?? body18Style,
        textAlign: textAlign,
        maxLines: maxLines,
      ),
    );
  }
}
