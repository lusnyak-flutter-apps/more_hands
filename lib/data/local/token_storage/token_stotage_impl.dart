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
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: TokenStorage.key);
  }

  @override
  Future<LoginResponseModel?> readToken() async {
    final tokenString = await _storage.read(key: TokenStorage.key);
    if (tokenString != null && tokenString.isNotEmpty) {
      Map<String, dynamic> tokenJson = jsonDecode(tokenString);
      return LoginResponseModel.fromJson(tokenJson);
    }
    return null;
  }
}
