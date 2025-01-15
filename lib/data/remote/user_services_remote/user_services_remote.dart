import 'dart:io';

import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_service_request_model/user_service_request_model.dart';

part 'user_services_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class UserServicesRemoteApi {
  @factoryMethod
  factory UserServicesRemoteApi(Dio dio) = _UserServicesRemoteApi;

  @GET(EndPoint.userServicesList)
  Future<List<ServiceModel>?> getUserServices();

  @POST(EndPoint.addUserService)
  Future<void> addUserService({
    @Body() UserServiceRequestModel? data,
  });

  @PUT(EndPoint.updateUserService)
  Future<void> updateUserService({
    @Body() UserServiceRequestModel? data,
  });

  @DELETE(EndPoint.deleteUserService)
  Future<void> deleteUserService({
    @Query("userServiceId") required int userServiceId,
  });

  @POST(EndPoint.userServiceImage)
  @MultiPart()
  Future<void> attachServiceImage({
    @Query("userServiceId") required int userServiceId,
    @Query("attachType") required String attachType,
    @Query("attachName") String? attachName,
    @Query("isMain") bool isMain = false,
    @Part(name: "file") required File file,
  });

  @PUT(EndPoint.userServiceImage)
  @MultiPart()
  Future<void> updateServiceImage({
    @Query("userServiceId") required int userServiceId,
    @Query("userServiceFileId") required int userServiceFileId,
    @Query("attachType") required String attachType,
    @Query("attachName") String? attachName,
    @Query("isMain") bool isMain = false,
    @Part(name: "file") required File file,
  });

  @DELETE(EndPoint.userServiceImage)
  @MultiPart()
  Future<void> deleteServiceImage({
    @Query("userServiceId") required int userServiceId,
    @Query("userServiceFileId") required int userServiceFileId,
  });
}
