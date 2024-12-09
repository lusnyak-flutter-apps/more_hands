import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class OnboardingInfo extends StatelessWidget {
  const OnboardingInfo({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: body28SemiBoldStyle,
        ),
        16.h.heightBox,
        Text(
          description,
          style: body18MediumStyle,
        ),
      ],
    );
  }
}
