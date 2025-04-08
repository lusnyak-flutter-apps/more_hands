part of 'app_loading_cubit.dart';

@freezed
class AppLoadingState with _$AppLoadingState {
  const factory AppLoadingState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default(false) bool logged,
    @Default(false) bool onboardingLaunched,
  }) = _AppLoadingState;

  const AppLoadingState._();
}