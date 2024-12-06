import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:uikit/uikit.dart';
@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const _OnboardingView();
  }
}

class _OnboardingView extends StatelessWidget {
  const _OnboardingView();

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: MoreHandsAssets.images.svg.hand1.svg()),
    );
  }
}
