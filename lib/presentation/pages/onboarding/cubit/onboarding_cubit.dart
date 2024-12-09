import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/onboarding/view_model/onboarding_view_model.dart';

part 'onboarding_state.dart';

part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial());
  final PageController pageController = PageController();

  void initializeData(List<OnboardingViewModel> onboardingData) {

    emit(OnboardingState.loaded(data: onboardingData, page: 0));
  }

  void onNext() {
    state.whenOrNull(loaded: (page, data) {

      final currentPage = pageController.page?.toInt() ?? 0;

      if (currentPage != data.length - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        emit(
          (state as _OnboardingLoadedState).copyWith(page: currentPage + 1),
        );
      } else {
        emit(const OnboardingState.complete());
      }
    });
  }

  void onChangedPage(int page) {
    emit(
      (state as _OnboardingLoadedState).copyWith(page:page),
    );
  }
}
