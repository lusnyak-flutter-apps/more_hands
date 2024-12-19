import 'package:flutter/services.dart';
import 'package:more_hands/core/core.dart';

part 'referrals_cubit.freezed.dart';

part 'referrals_state.dart';

@injectable
class ReferralsCubit extends Cubit<ReferralsState> {
  ReferralsCubit() : super(const ReferralsState.loaded());

  Future<void> getReferrals() async {
    emit(const ReferralsState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const ReferralsState.loaded());
  }

  Future<void> copyReferralCode(String code) async {
    return await Clipboard.setData(ClipboardData(text: code));
  }
}
