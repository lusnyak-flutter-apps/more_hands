// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_list_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceListViewModelImpl _$$ServiceListViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceListViewModelImpl(
      category: ServiceModel.fromJson(json['category'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ServiceModel>[],
    );

Map<String, dynamic> _$$ServiceListViewModelImplToJson(
        _$ServiceListViewModelImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'services': instance.services,
    };
