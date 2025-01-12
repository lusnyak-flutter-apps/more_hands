import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';

part 'app_loading_state.dart';

part 'app_loading_cubit.freezed.dart';

@injectable
class AppLoadingCubit extends Cubit<AppLoadingState> {
  AppLoadingCubit() : super(const AppLoadingState());

  Future<void> loadAppData() async {
    debugPrint('loadAppData');
    emit(state.copyWith(loading: true));
    bool onBoardingLaunch = Preferences.instance.onBoardingLaunch();
    debugPrint(onBoardingLaunch.toString());
    final tokenModel = await getIt<TokenStorage>().readToken();
    bool logged = tokenModel?.token != null && tokenModel!.token.isNotEmpty;
    debugPrint(logged.toString());
    await Future.delayed(const Duration(seconds: 3), () {
      emit(
        state.copyWith(
          loaded: true,
          loading: false,
          logged: logged,
          onboardingLaunched: onBoardingLaunch,
        ),
      );
    }).whenComplete(FlutterNativeSplash.remove);
  }
}
