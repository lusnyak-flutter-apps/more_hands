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
    return  BlocListener<AppLoadingCubit, AppLoadingState>(
      listener: (context, state){
        if (state.loaded) {
          debugPrint(state.onboardingLaunched.toString());
          if(state.onboardingLaunched) {
            context.router.replace(const TestAuthRoute());
          } else {
            context.router.replace(const OnboardingRoute());
          }
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: MoreHandsAssets.images.svg.moreHands.svg(width: 280.w) ,
          ),
        ),
      ),
    );
  }
}
