// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      serviceInfo: json['servInfo'] == null
          ? null
          : ServiceInfoModel.fromJson(json['servInfo'] as Map<String, dynamic>),
      category: json['catInfo'] == null
          ? null
          : CategoryModel.fromJson(json['catInfo'] as Map<String, dynamic>),
      serviceAdditionalInfo: json['serviceMeasInfo'] == null
          ? null
          : ServiceAdditionalInfoModel.fromJson(
              json['serviceMeasInfo'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map(
                  (e) => LocationShortModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LocationShortModel>[],
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FileModel>[],
      userHasService: json['userHasService'] as bool? ?? false,
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'servInfo': instance.serviceInfo,
      'catInfo': instance.category,
      'serviceMeasInfo': instance.serviceAdditionalInfo,
      'locations': instance.locations,
      'files': instance.files,
      'userHasService': instance.userHasService,
    };
