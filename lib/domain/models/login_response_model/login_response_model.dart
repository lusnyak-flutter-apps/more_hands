import 'package:more_hands/core/core.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginResponseModel({
    required String token,
    required int expiration,
    @JsonKey(name: 'expirationDate') required String expirationDate,
    @JsonKey(name: 'refreshToken') required String refreshToken,
    @JsonKey(name: 'refreshExpiration') required int refreshExpiration,
    @JsonKey(name: 'refreshExpirationDate')
    required String refreshExpirationDate,
    required String? refCode,
    required int? closestLoc,
    required bool? existingUser,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
