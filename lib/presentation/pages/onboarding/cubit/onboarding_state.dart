part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _OnboardingState;


  const factory OnboardingState.loaded({
    @Default(0) int page,
    required List<OnboardingViewModel> data,
  }) = _OnboardingLoadedState;

  const factory OnboardingState.complete() = _OnboardingCompleteState;
}
