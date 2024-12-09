// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:more_hands/core/network/dio_client/dio_client.dart' as _i98;
import 'package:more_hands/presentation/pages/app_loading/cubit/app_loading_cubit.dart'
    as _i1030;
import 'package:more_hands/presentation/pages/onboarding/cubit/onboarding_cubit.dart'
    as _i701;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioClient = _$DioClient();
    gh.factory<_i1030.AppLoadingCubit>(() => _i1030.AppLoadingCubit());
    gh.factory<_i701.OnboardingCubit>(() => _i701.OnboardingCubit());
    gh.factory<String>(
      () => dioClient.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.lazySingleton<_i361.Dio>(
        () => dioClient.dio(gh<String>(instanceName: 'baseUrl')));
    return this;
  }
}

class _$DioClient extends _i98.DioClient {}
