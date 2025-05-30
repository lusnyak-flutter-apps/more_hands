import 'dart:convert';

import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/local/token_storage/token_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:more_hands/domain/models/login_response_model/login_response_model.dart';

@Injectable(as: TokenStorage)
class TokenStorageImpl implements TokenStorage {
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> saveToken(LoginResponseModel token) async {
    Map<String, dynamic> tokenJson = token.toJson();
    String tokenJsonString = jsonEncode(tokenJson);

    await _storage.write(key: TokenStorage.key, value: tokenJsonString);
    await _storage.write(
        key: TokenStorage.expiration, value: token.expiration.toString());
    await _storage.write(
        key: TokenStorage.refreshToken, value: token.refreshToken);
    await _storage.write(
        key: TokenStorage.refreshExpiration,
        value: token.refreshExpiration.toString());
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: TokenStorage.key);
    await _storage.delete(key: TokenStorage.expiration);
    await _storage.delete(key: TokenStorage.refreshToken);
    await _storage.delete(key: TokenStorage.refreshExpiration);
  }

  @override
  Future<LoginResponseModel?> readToken() async {
    final tokenString = await _storage.read(key: TokenStorage.key);
    if (tokenString != null && tokenString.isNotEmpty) {
      Map<String, dynamic> tokenJson = jsonDecode(tokenString);

      final expiration = await _storage.read(key: TokenStorage.expiration);
      tokenJson[TokenStorage.expiration] = int.parse(expiration ?? '0');
      final refreshToken = await _storage.read(key: TokenStorage.refreshToken);
      if (refreshToken != null) {
        tokenJson[TokenStorage.refreshToken] = refreshToken;
      }
      final refreshExpiration =
          await _storage.read(key: TokenStorage.refreshExpiration);
      if (refreshExpiration != null) {
        tokenJson[TokenStorage.refreshExpiration] =
            int.parse(refreshExpiration);
      }
      return LoginResponseModel.fromJson(tokenJson);
    }
    return null;
  }

  @override
  Future<void> updateToken(String token) {
    return _storage.write(key: TokenStorage.key, value: token);
  }
}
