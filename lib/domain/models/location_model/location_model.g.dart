// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      countryCode: json['countryCode'] as String?,
      locName: json['locName'] as String,
      countryName: json['countryName'] as String,
      locLat: json['locLat'] as num?,
      locLon: json['locLon'] as num?,
      countryCurrency: json['countryCurrency'] as String?,
      currencyName: json['currencyName'] as String?,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'locName': instance.locName,
      'countryName': instance.countryName,
      'locLat': instance.locLat,
      'locLon': instance.locLon,
      'countryCurrency': instance.countryCurrency,
      'currencyName': instance.currencyName,
    };
