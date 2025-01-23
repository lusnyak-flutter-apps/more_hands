// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      udfId: (json['udf_id'] as num?)?.toInt(),
      usfFileId: (json['usf_file_id'] as num?)?.toInt(),
      attachCategory:
          $enumDecodeNullable(_$AttachCategoryEnumMap, json['attach_category']),
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'udf_id': instance.udfId,
      'usf_file_id': instance.usfFileId,
      'attach_category': _$AttachCategoryEnumMap[instance.attachCategory],
    };

const _$AttachCategoryEnumMap = {
  AttachCategory.serviceImage: 'service_image',
  AttachCategory.userServiceImage: 'user_service_image',
  AttachCategory.profileImage: 'profile_image',
};
