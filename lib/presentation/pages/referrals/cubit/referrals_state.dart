part of 'referrals_cubit.dart';

@freezed
class ReferralsState with _$ReferralsState {
  const factory ReferralsState.loading() = _ReferralsState;
  const factory ReferralsState.loaded({
    @Default("0") String referralCode,
    @Default(<UserModel>[]) List<UserModel> referrals,
  }) = _ReferralsLoadedState;
 }
