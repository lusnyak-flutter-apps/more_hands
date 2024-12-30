// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoModelImpl _$$UserInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoModelImpl(
      id: (json['id'] as num).toInt(),
      userLogin: json['userLogin'] as String,
      userKYCApproved: json['userKYCApproved'] as bool? ?? false,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      bio: json['bio'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      instagramLink: json['instagramLink'] as String?,
      facebookLink: json['facebookLink'] as String?,
      telegramLink: json['telegramLink'] as String?,
      whatsappLink: json['whatsappLink'] as String?,
      subscriptionEndDate: json['subscrEndDate'] == null
          ? null
          : DateTime.parse(json['subscrEndDate'] as String),
      userRating: json['userRating'] as num? ?? 0,
      refCount: json['refCount'] as num? ?? 0,
      dealCountAdd: json['dealCountAdd'] as num? ?? 0,
      dealCountSpend: json['dealCountSpend'] as num? ?? 0,
      shaken: json['shaken'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserInfoModelImplToJson(_$UserInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userLogin': instance.userLogin,
      'userKYCApproved': instance.userKYCApproved,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'bio': instance.bio,
      'profileImageUrl': instance.profileImageUrl,
      'instagramLink': instance.instagramLink,
      'facebookLink': instance.facebookLink,
      'telegramLink': instance.telegramLink,
      'whatsappLink': instance.whatsappLink,
      'subscrEndDate': instance.subscriptionEndDate?.toIso8601String(),
      'userRating': instance.userRating,
      'refCount': instance.refCount,
      'dealCountAdd': instance.dealCountAdd,
      'dealCountSpend': instance.dealCountSpend,
      'shaken': instance.shaken,
    };
