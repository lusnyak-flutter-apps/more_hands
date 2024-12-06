import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:more_hands/core/core.dart';

part 'app_loading_state.dart';

part 'app_loading_cubit.freezed.dart';

@injectable
class AppLoadingCubit extends Cubit<AppLoadingState> {
  AppLoadingCubit() : super(const AppLoadingState());

  Future<void> loadAppData() async {
    emit(state.copyWith(loading: true));
    await Future.delayed(const Duration(seconds: 3), () {
      emit(state.copyWith(loaded: true, loading: false));
    });
    FlutterNativeSplash.remove();
  }
}
