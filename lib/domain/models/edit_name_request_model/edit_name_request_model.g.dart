// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_name_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditNameRequestModel _$EditNameRequestModelFromJson(
        Map<String, dynamic> json) =>
    EditNameRequestModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
    );

Map<String, dynamic> _$EditNameRequestModelToJson(
        EditNameRequestModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
    };
