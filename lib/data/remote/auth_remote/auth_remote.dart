import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/login_response_model/login_response_model.dart';

part 'auth_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class AuthRemoteApi {
  @factoryMethod
  factory AuthRemoteApi(Dio dio) = _AuthRemoteApi;

  @GET(EndPoint.login)
  Future<LoginResponseModel?> login(
    @Query('username') String username,
    @Query('password') String password,
  );

  @DELETE(EndPoint.userDeleteSelf)
  Future<void> deleteAccount();

  @GET(EndPoint.loginGoogle)
  Future<LoginResponseModel?> loginGoogle(
    @Query('idToken') String idToken, {
    @Query('refCode') String? refCode,
  });

  @GET(EndPoint.loginApple)
  Future<LoginResponseModel?> loginApple(
    @Query('idToken') String idToken, {
    @Query('refCode') String? refCode,
    @Query('familyName') String? familyName,
    @Query('givenName') String? givenName,
  });

  @GET(EndPoint.refreshToken)
  Future<LoginResponseModel?> refreshToken();
}
