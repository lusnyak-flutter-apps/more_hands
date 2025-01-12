import 'dart:io';

import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/edit_bio_request_model/edit_bio_request_model.dart';
import 'package:more_hands/domain/models/edit_contacts_request_model/edit_contacts_request_model.dart';
import 'package:more_hands/domain/models/edit_name_request_model/edit_name_request_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'edit_profile_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class EditProfileRemoteApi {

  @factoryMethod
  factory EditProfileRemoteApi(Dio dio) = _EditProfileRemoteApi;

  @POST(EndPoint.userName)
  Future<void> editName({
    @Body() EditNameRequestModel? data,
  });

  @POST(EndPoint.userContacts)
  Future<void> editContacts({
    @Body() EditContactsRequestModel? data,
  });


  @POST(EndPoint.userBio)
  Future<void> editBio({
    @Body() EditBioRequestModel? data,
  });

  @POST(EndPoint.userProfileImage)
  @MultiPart()
  Future<void> attachProfileImage({
    @Query("attachType") String? attachType,
    @Query("attachType") String? attachName,
     @Part(name: "file") required File file,
  });
}
