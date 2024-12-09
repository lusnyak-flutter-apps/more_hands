import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/onboarding/cubit/onboarding_cubit.dart';
import 'package:more_hands/presentation/pages/onboarding/sub_widgets/onboarding_info.dart';
import 'package:more_hands/presentation/pages/onboarding/view_model/onboarding_view_model.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingData = <OnboardingViewModel>[
      OnboardingViewModel(
        id: 0,
        title: context.localized.onboardingTitle1,
        description: context.localized.onboardingDescription1,
        backgroundImage: MoreHandsAssets.images.png.hands1.keyName,
      ),
      OnboardingViewModel(
        id: 1,
        title: context.localized.onboardingTitle2,
        description: context.localized.onboardingDescription2,
        backgroundImage: MoreHandsAssets.images.png.hands2.keyName,
      ),
      OnboardingViewModel(
        id: 2,
        title: context.localized.onboardingTitle3,
        description:
            '${context.localized.onboardingDescription31}\n\n${context.localized.onboardingDescription32}',
        backgroundImage: MoreHandsAssets.images.png.hands3.keyName,
      ),
      OnboardingViewModel(
        id: 3,
        title: context.localized.onboardingTitle4,
        description: context.localized.onboardingDescription4,
        backgroundImage: MoreHandsAssets.images.png.hands4.keyName,
      ),
      OnboardingViewModel(
        id: 4,
        title: context.localized.onboardingTitle5,
        description: context.localized.onboardingDescription5,
        backgroundImage: MoreHandsAssets.images.png.hands5.keyName,
      ),
    ];

    return BlocProvider<OnboardingCubit>(
      create: (BuildContext context) =>
          getIt<OnboardingCubit>()..initializeData(onboardingData),
      child: const _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatelessWidget {
  const _OnboardingView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            final (page, data) = state.when(
              loaded: (page, data) => (page, data),
              initial: () => (0, <OnboardingViewModel>[]),
            );
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  fit: StackFit.loose,
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Transform.rotate(
                        angle: -90,
                        child: IndexedStack(
                          index: page,
                          children: data
                              .map((info) => Image.asset(
                                    info.backgroundImage,
                                    height: 252.h,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    PageView(
                      controller: cubit.pageController,
                      onPageChanged: cubit.onChangedPage,
                      children: data
                          .map(
                            (info) => OnboardingInfo(
                              title: info.title,
                              description: info.description,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ).expanded(),
                16.h.heightBox,
                MHPageIndicator(
                  controller: cubit.pageController,
                  count: data.length,
                ).toCenter(),
                16.h.heightBox,
                MHGradientButton(
                  title: context.localized.next,
                  onPressed: cubit.onNext,
                ),
              ],
            ).paddingSymmetric(horizontal: 24.w, vertical: 16.h);
          },
        ),
      ),
    );
  }
}
