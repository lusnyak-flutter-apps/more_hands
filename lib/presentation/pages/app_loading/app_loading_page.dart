import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:uikit/uikit.dart';
import 'cubit/app_loading_cubit.dart';

@RoutePage()
class AppLoadingPage extends StatelessWidget {
  const AppLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppLoadingCubit>(
      create: (BuildContext context) => getIt<AppLoadingCubit>()..loadAppData(),
      child: const _AppLoadingView(),
    );
  }
}

class _AppLoadingView extends StatelessWidget {
  const _AppLoadingView();

  @override
  Widget build(BuildContext context) {
    return   BlocListener<AppLoadingCubit, AppLoadingState>(
      listener: (_, state){
        if (state.loaded) {
          context.router.popAndPush(const OnboardingRoute());
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: MoreHandsAssets.images.svg.hands.svg(width: 280.w) ,
          ),
        ),
      ),
    );
  }
}
