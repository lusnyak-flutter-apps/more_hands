// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_by_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceByCategoryModelImpl _$$ServiceByCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceByCategoryModelImpl(
      category: json['catInfo'] == null
          ? null
          : CategoryModel.fromJson(json['catInfo'] as Map<String, dynamic>),
      services: (json['userServicesInfo'] as List<dynamic>?)
              ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ServiceModel>[],
    );

Map<String, dynamic> _$$ServiceByCategoryModelImplToJson(
        _$ServiceByCategoryModelImpl instance) =>
    <String, dynamic>{
      'catInfo': instance.category,
      'userServicesInfo': instance.services,
    };
