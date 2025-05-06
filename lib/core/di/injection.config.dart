// dart format width=80
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
import 'package:more_hands/data/local/current_location/current_location_storage.dart'
    as _i311;
import 'package:more_hands/data/local/current_location/current_location_storage_impl.dart'
    as _i943;
import 'package:more_hands/data/local/social_auth/social_auth_manager.dart'
    as _i491;
import 'package:more_hands/data/local/social_auth/social_auth_manager_impl.dart'
    as _i601;
import 'package:more_hands/data/local/token_storage/token_storage.dart'
    as _i514;
import 'package:more_hands/data/local/token_storage/token_stotage_impl.dart'
    as _i415;
import 'package:more_hands/data/remote/auth_remote/auth_remote.dart' as _i934;
import 'package:more_hands/data/remote/currency_remote/currency_remote.dart'
    as _i952;
import 'package:more_hands/data/remote/edit_profile_remote/edit_profile_remote.dart'
    as _i288;
import 'package:more_hands/data/remote/location_remote/location_remote.dart'
    as _i823;
import 'package:more_hands/data/remote/request_remote/request_remote.dart'
    as _i372;
import 'package:more_hands/data/remote/review_remote/review_remote.dart'
    as _i935;
import 'package:more_hands/data/remote/service_remote/service_remote.dart'
    as _i541;
import 'package:more_hands/data/remote/storage_remote/storage_remote.dart'
    as _i168;
import 'package:more_hands/data/remote/subscription_remote/subscription_remote.dart'
    as _i36;
import 'package:more_hands/data/remote/user_remote/user_remote.dart' as _i761;
import 'package:more_hands/data/remote/user_services_remote/user_services_remote.dart'
    as _i622;
import 'package:more_hands/data/repository/auth_repository.dart' as _i528;
import 'package:more_hands/data/repository/comments_repository.dart' as _i576;
import 'package:more_hands/data/repository/location_repository.dart' as _i878;
import 'package:more_hands/data/repository/profile_repository.dart' as _i725;
import 'package:more_hands/data/repository/referrals_repository.dart' as _i396;
import 'package:more_hands/data/repository/requests_repository.dart' as _i607;
import 'package:more_hands/data/repository/service_repository.dart' as _i593;
import 'package:more_hands/data/repository/subscription_repository.dart'
    as _i255;
import 'package:more_hands/data/repository/users_repository.dart' as _i443;
import 'package:more_hands/presentation/pages/add_review/cubit/add_review_cubit.dart'
    as _i54;
import 'package:more_hands/presentation/pages/app_loading/cubit/app_loading_cubit.dart'
    as _i1030;
import 'package:more_hands/presentation/pages/auth/cubit/authorization_cubit.dart'
    as _i24;
import 'package:more_hands/presentation/pages/edit_profile/cubit/profile_edit_cubit.dart'
    as _i272;
import 'package:more_hands/presentation/pages/home/cubit/home_cubit.dart'
    as _i393;
import 'package:more_hands/presentation/pages/location/cubit/select_location_cubit.dart'
    as _i125;
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
import 'package:more_hands/presentation/pages/services/cubit/service_details_cubit/service_details_cubit.dart'
    as _i262;
import 'package:more_hands/presentation/pages/services/cubit/service_list_cubit/service_list_cubit.dart'
    as _i198;
import 'package:more_hands/presentation/pages/subscription/cubit/subscription_cubit.dart'
    as _i488;
import 'package:more_hands/presentation/pages/user/cubit/user_cubit.dart'
    as _i106;
import 'package:more_hands/presentation/services/subscription_service.dart'
    as _i455;

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
    gh.factory<_i125.SelectLocationCubit>(() => _i125.SelectLocationCubit());
    gh.factory<_i272.ProfileEditCubit>(() => _i272.ProfileEditCubit());
    gh.factory<_i1030.AppLoadingCubit>(() => _i1030.AppLoadingCubit());
    gh.factory<_i106.UserCubit>(() => _i106.UserCubit());
    gh.factory<_i498.RequestsCubit>(() => _i498.RequestsCubit());
    gh.factory<_i72.SendRequestCubit>(() => _i72.SendRequestCubit());
    gh.factory<_i224.ProfileCubit>(() => _i224.ProfileCubit());
    gh.factory<_i54.AddReviewCubit>(() => _i54.AddReviewCubit());
    gh.factory<_i198.ServiceListCubit>(() => _i198.ServiceListCubit());
    gh.factory<_i262.ServiceDetailsCubit>(() => _i262.ServiceDetailsCubit());
    gh.factory<_i701.OnboardingCubit>(() => _i701.OnboardingCubit());
    gh.factory<_i455.SubscriptionService>(() => _i455.SubscriptionService());
    gh.lazySingleton<_i255.SubscriptionRepository>(
        () => _i255.SubscriptionRepository());
    gh.lazySingleton<_i576.CommentsRepository>(
        () => _i576.CommentsRepository());
    gh.lazySingleton<_i593.ServiceRepository>(() => _i593.ServiceRepository());
    gh.lazySingleton<_i878.LocationRepository>(
        () => _i878.LocationRepository());
    gh.lazySingleton<_i607.RequestsRepository>(
        () => _i607.RequestsRepository());
    gh.lazySingleton<_i443.UsersRepository>(() => _i443.UsersRepository());
    gh.lazySingleton<_i528.AuthRepository>(() => _i528.AuthRepository());
    gh.lazySingleton<_i725.ProfileRepository>(() => _i725.ProfileRepository());
    gh.lazySingleton<_i396.ReferralsRepository>(
        () => _i396.ReferralsRepository());
    gh.factory<_i514.TokenStorage>(() => _i415.TokenStorageImpl());
    gh.factory<_i311.CurrentLocationStorage>(
        () => _i943.CurrentLocationStorageImpl());
    gh.factory<String>(
      () => dioClient.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i759.FirebaseProvider>(() => _i369.FirebaseProviderImpl());
    gh.lazySingleton<_i361.Dio>(
        () => dioClient.dio(gh<String>(instanceName: 'baseUrl')));
    gh.factory<_i491.SocialAuthManager>(() => _i601.SocialAuthManagerImpl());
    gh.factory<_i488.SubscriptionCubit>(() => _i488.SubscriptionCubit(
          gh<_i255.SubscriptionRepository>(),
          gh<_i455.SubscriptionService>(),
        ));
    gh.lazySingleton<_i372.RequestRemoteApi>(
        () => _i372.RequestRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i288.EditProfileRemoteApi>(
        () => _i288.EditProfileRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i935.ReviewRemoteApi>(
        () => _i935.ReviewRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i823.LocationRemoteApi>(
        () => _i823.LocationRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i622.UserServicesRemoteApi>(
        () => _i622.UserServicesRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i761.UserRemoteApi>(
        () => _i761.UserRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i541.ServiceRemoteApi>(
        () => _i541.ServiceRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i952.CurrencyRemoteApi>(
        () => _i952.CurrencyRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i36.SubscriptionRemoteApi>(
        () => _i36.SubscriptionRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i168.StorageRemoteApi>(
        () => _i168.StorageRemoteApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i934.AuthRemoteApi>(
        () => _i934.AuthRemoteApi(gh<_i361.Dio>()));
    return this;
  }
}

class _$DioClient extends _i98.DioClient {}
