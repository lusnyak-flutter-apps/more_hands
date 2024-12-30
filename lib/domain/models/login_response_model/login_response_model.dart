import 'package:more_hands/core/core.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginResponseModel({
    required String token,
    required int expiration,
    required String refCode,
    required int closestLoc,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
