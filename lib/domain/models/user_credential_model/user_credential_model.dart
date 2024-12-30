import 'package:more_hands/core/core.dart';

part 'user_credential_model.freezed.dart';

@freezed
class UserCredentialModel with _$UserCredentialModel {
  const factory UserCredentialModel({
    required  String name,
    required  String username,
    required String password,
  }) = _UserCredentialModel;
}