import 'package:more_hands/domain/models/login_response_model/login_response_model.dart';

abstract class TokenStorage {
  static const String key = "token";
  static const String expiration = "expiration";
  static const String refreshToken = "refreshToken";
  static const String refreshExpiration = "refreshExpiration";

  Future<void> deleteToken();
  Future<LoginResponseModel?> readToken();
  Future<void> saveToken(LoginResponseModel token);
  Future<void> updateToken(String token);
}
