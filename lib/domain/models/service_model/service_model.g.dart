// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      catId: (json['catId'] as num).toInt(),
      catMCode: json['catMcode'] as String?,
      catName: json['catName'] as String?,
      servId: (json['servId'] as num).toInt(),
      servMCode: json['servMcode'] as String?,
      servName: json['servName'] as String?,
      servImageUrl: json['servImageUrl'] as String?,
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => LocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LocationModel>[],
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FileModel>[],
      userHasService: json['userHasService'] as bool? ?? false,
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'catId': instance.catId,
      'catMcode': instance.catMCode,
      'catName': instance.catName,
      'servId': instance.servId,
      'servMcode': instance.servMCode,
      'servName': instance.servName,
      'servImageUrl': instance.servImageUrl,
      'locations': instance.locations,
      'files': instance.files,
      'userHasService': instance.userHasService,
    };
