import 'package:more_hands/core/core.dart';

part 'onboarding_view_model.freezed.dart';

@freezed
class OnboardingViewModel with _$OnboardingViewModel {
  const factory OnboardingViewModel({
    required int id,
    required String title,
    required String description,
    required String backgroundImage,
  }) = _OnboardingViewModel;
}
