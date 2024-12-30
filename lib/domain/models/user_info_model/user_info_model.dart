import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:more_hands/presentation/pages/user/user_page.dart';

part 'user_info_model.freezed.dart';

part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    required int id,
    required String userLogin,
    @Default(false) bool userKYCApproved,
    String? firstName,
    String? lastName,
    String? middleName,
    String? bio,
    String? profileImageUrl,
    String? instagramLink,
    String? facebookLink,
    String? telegramLink,
    String? whatsappLink,
    @JsonKey(name: "subscrEndDate") DateTime? subscriptionEndDate,
    @Default(0) num userRating,
    @Default(0) num refCount,
    @Default(0) num dealCountAdd,
    @Default(0) num dealCountSpend,
    @Default(false) bool shaken,
  }) = _UserInfoModel;

  //
  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}
