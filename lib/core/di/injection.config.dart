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
import 'package:more_hands/data/firebase/firebase_provider/firebase_provider.dart'
    as _i759;
import 'package:more_hands/data/firebase/firebase_provider/firebase_provider_impl.dart'
    as _i369;
import 'package:more_hands/presentation/pages/app_loading/cubit/app_loading_cubit.dart'
    as _i1030;
import 'package:more_hands/presentation/pages/auth/cubit/authorization_cubit.dart'
    as _i24;
import 'package:more_hands/presentation/pages/onboarding/cubit/onboarding_cubit.dart'
    as _i701;
import 'package:more_hands/presentation/pages/profile/cubit/profile_cubit.dart'
    as _i224;
import 'package:more_hands/presentation/pages/referrals/cubit/referrals_cubit.dart'
    as _i927;

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
    gh.factory<_i24.AuthorizationCubit>(() => _i24.AuthorizationCubit());
    gh.factory<_i1030.AppLoadingCubit>(() => _i1030.AppLoadingCubit());
    gh.factory<_i701.OnboardingCubit>(() => _i701.OnboardingCubit());
    gh.factory<_i927.ReferralsCubit>(() => _i927.ReferralsCubit());
    gh.factory<_i224.ProfileCubit>(() => _i224.ProfileCubit());
    gh.factory<String>(
      () => dioClient.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i759.FirebaseProvider>(() => _i369.FirebaseProviderImpl());
    gh.lazySingleton<_i361.Dio>(
        () => dioClient.dio(gh<String>(instanceName: 'baseUrl')));
    return this;
  }
}

class _$DioClient extends _i98.DioClient {}
