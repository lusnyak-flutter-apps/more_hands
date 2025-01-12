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
import 'package:more_hands/data/local/token_storage/token_storage.dart'
    as _i514;
import 'package:more_hands/data/local/token_storage/token_stotage_impl.dart'
    as _i415;
import 'package:more_hands/data/remote/auth_remote/auth_remote.dart' as _i934;
import 'package:more_hands/data/remote/edit_profile_remote/edit_profile_remote.dart'
    as _i288;
import 'package:more_hands/data/remote/service_remote/service_remote.dart'
    as _i541;
import 'package:more_hands/data/remote/user_remote/user_remote.dart' as _i761;
import 'package:more_hands/data/repository/auth_repository.dart' as _i528;
import 'package:more_hands/data/repository/profile_repository.dart' as _i725;
import 'package:more_hands/data/repository/referrals_repository.dart' as _i396;
import 'package:more_hands/data/repository/users_repository.dart' as _i443;
import 'package:more_hands/presentation/pages/app_loading/cubit/app_loading_cubit.dart'
    as _i1030;
import 'package:more_hands/presentation/pages/auth/cubit/authorization_cubit.dart'
    as _i24;
import 'package:more_hands/presentation/pages/edit_profile/cubit/profile_edit_cubit.dart'
    as _i272;
import 'package:more_hands/presentation/pages/home/cubit/home_cubit.dart'
    as _i393;
import 'package:more_hands/presentation/pages/onboarding/cubit/onboarding_cubit.dart'
    as _i701;
import 'package:more_hands/presentation/pages/profile/cubit/profile_cubit.dart'
    as _i224;
import 'package:more_hands/presentation/pages/referrals/cubit/referrals_cubit.dart'
    as _i927;
import 'package:more_hands/presentation/pages/requests/cubit/requests_cubit.dart'
    as _i498;
import 'package:more_hands/presentation/pages/send_request/cubit/send_request_cubit.dart'
    as _i72;
import 'package:more_hands/presentation/pages/user/cubit/user_cubit.dart'
    as _i106;

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
    gh.factory<_i393.HomeCubit>(() => _i393.HomeCubit());
    gh.factory<_i24.AuthorizationCubit>(() => _i24.AuthorizationCubit());
    gh.factory<_i927.ReferralsCubit>(() => _i927.ReferralsCubit());
    gh.factory<_i1030.AppLoadingCubit>(() => _i1030.AppLoadingCubit());
    gh.factory<_i106.UserCubit>(() => _i106.UserCubit());
    gh.factory<_i498.RequestsCubit>(() => _i498.RequestsCubit());
    gh.factory<_i72.SendRequestCubit>(() => _i72.SendRequestCubit());
    gh.factory<_i224.ProfileCubit>(() => _i224.ProfileCubit());
    gh.factory<_i701.OnboardingCubit>(() => _i701.OnboardingCubit());
    gh.factory<_i272.ProfileEditCubit>(() => _i272.ProfileEditCubit());
    gh.lazySingleton<_i443.UsersRepository>(() => _i443.UsersRepository());
    gh.lazySingleton<_i528.AuthRepository>(() => _i528.AuthRepository());
    gh.lazySingleton<_i725.ProfileRepository>(() => _i725.ProfileRepository());
    gh.lazySingleton<_i396.ReferralsRepository>(
        () => _i396.ReferralsRepository());
    gh.factory<_i514.TokenStorage>(() => _i415.TokenStorageImpl());
    gh.factory<String>(
      () => dioClient.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i759.FirebaseProvider>(() => _i369.FirebaseProviderImpl());
    gh.lazySingleton<_i361.Dio>(
        () => dioClient.dio(gh<String>(instanceName: 'baseUrl')));
    gh.lazySingleton<_i761.UserRemoteApi>(
        () => _i761.UserRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i541.ServiceRemoteApi>(
        () => _i541.ServiceRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i934.AuthRemoteApi>(
        () => _i934.AuthRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i288.EditProfileRemoteApi>(
        () => _i288.EditProfileRemoteApi(gh<_i361.Dio>()));
    return this;
  }
}

class _$DioClient extends _i98.DioClient {}
