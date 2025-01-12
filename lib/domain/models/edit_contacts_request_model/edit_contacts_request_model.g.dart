// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_contacts_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditContactsRequestModel _$EditContactsRequestModelFromJson(
        Map<String, dynamic> json) =>
    EditContactsRequestModel(
      telegramLink: json['telegramLink'] as String?,
      whatsappLink: json['whatsappLink'] as String?,
      facebookLink: json['facebookLink'] as String?,
      instagramLink: json['instagramLink'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$EditContactsRequestModelToJson(
        EditContactsRequestModel instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'instagramLink': instance.instagramLink,
      'facebookLink': instance.facebookLink,
      'telegramLink': instance.telegramLink,
      'whatsappLink': instance.whatsappLink,
    };
