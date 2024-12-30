import 'package:more_hands/domain/models/login_response_model/login_response_model.dart';

abstract class TokenStorage {
  static const String key = "token";

  Future<void> deleteToken();
  Future<LoginResponseModel?> readToken();
  Future<void> saveToken(LoginResponseModel token);
}