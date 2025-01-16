// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      catId: (json['catId'] as num).toInt(),
      catMCode: json['catMcode'] as String?,
      catName: json['catName'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'catId': instance.catId,
      'catMcode': instance.catMCode,
      'catName': instance.catName,
    };
