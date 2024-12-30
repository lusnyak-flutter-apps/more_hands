import 'package:flutter/services.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/repository/referrals_repository.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'referrals_cubit.freezed.dart';

part 'referrals_state.dart';

@injectable
class ReferralsCubit extends Cubit<ReferralsState> {
  ReferralsCubit() : super(const ReferralsState.loaded());

  Future<void> getReferrals() async {
    emit(const ReferralsState.loading());
    try {
      final tokenModel = await getIt<TokenStorage>().readToken();
      final referrals = await getIt<ReferralsRepository>().getCurrentUserReferralsInfo();
       emit(ReferralsState.loaded(referralCode: tokenModel?.refCode ?? "", referrals: referrals));
    } catch (e) {
      emit(const ReferralsState.loaded());
    }
  }

  Future<void> copyReferralCode(String code) async {
    return await Clipboard.setData(ClipboardData(text: code));
  }
}
