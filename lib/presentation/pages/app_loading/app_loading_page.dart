import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';

@RoutePage()
class AppLoadingPage extends StatelessWidget {
  const AppLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const _AppLoadingView();
  }
}

class _AppLoadingView extends StatelessWidget {
  const _AppLoadingView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Center(
        child: Text("MoreHands"),
      )),
    );
  }
}
