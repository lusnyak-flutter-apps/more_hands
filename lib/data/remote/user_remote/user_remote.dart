import 'dart:io';

import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'user_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class UserRemoteApi {
  @factoryMethod
  factory UserRemoteApi(Dio dio) = _UserRemoteApi;

  @GET(EndPoint.getCurrentUserInfo)
  Future<UserModel?> getCurrentUserInfo();

  @GET("{path}")
  Future<dynamic> getUserProfileImage(@Path() String path);

  @GET(EndPoint.getCurrentUserReferralsInfo)
  Future<List<UserModel>> getCurrentUserReferralsInfo();

  @GET(EndPoint.findUsersByLocAndText)
  Future<List<UserModel>> findUsersByLocAndText(
    @Query('locId') int locId, {
    @Query('bio') String bio = "",
  });

  @GET(EndPoint.findUsersByLocAndServices)
  Future<List<UserModel>> findUsersByLocAndServices(
    @Query('locId') int locId,
    @Query('service') int service,
  );


}
