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
  @GET(EndPoint.loginGoogle)
  Future<LoginResponseModel?> loginGoogle(
    @Query('idToken') String idToken
  );
}
