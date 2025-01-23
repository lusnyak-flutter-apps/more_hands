// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String get locName => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;
  num? get locLat => throw _privateConstructorUsedError;
  num? get locLon => throw _privateConstructorUsedError;
  String? get countryCurrency => throw _privateConstructorUsedError;
  String? get currencyName => throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {int? id,
      String? countryCode,
      String locName,
      String countryName,
      num? locLat,
      num? locLon,
      String? countryCurrency,
      String? currencyName});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? locName = null,
    Object? countryName = null,
    Object? locLat = freezed,
    Object? locLon = freezed,
    Object? countryCurrency = freezed,
    Object? currencyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      locName: null == locName
          ? _value.locName
          : locName // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      locLat: freezed == locLat
          ? _value.locLat
          : locLat // ignore: cast_nullable_to_non_nullable
              as num?,
      locLon: freezed == locLon
          ? _value.locLon
          : locLon // ignore: cast_nullable_to_non_nullable
              as num?,
      countryCurrency: freezed == countryCurrency
          ? _value.countryCurrency
          : countryCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyName: freezed == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? countryCode,
      String locName,
      String countryName,
      num? locLat,
      num? locLon,
      String? countryCurrency,
      String? currencyName});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? countryCode = freezed,
    Object? locName = null,
    Object? countryName = null,
    Object? locLat = freezed,
    Object? locLon = freezed,
    Object? countryCurrency = freezed,
    Object? currencyName = freezed,
  }) {
    return _then(_$LocationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      locName: null == locName
          ? _value.locName
          : locName // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      locLat: freezed == locLat
          ? _value.locLat
          : locLat // ignore: cast_nullable_to_non_nullable
              as num?,
      locLon: freezed == locLon
          ? _value.locLon
          : locLon // ignore: cast_nullable_to_non_nullable
              as num?,
      countryCurrency: freezed == countryCurrency
          ? _value.countryCurrency
          : countryCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyName: freezed == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl(
      {this.id,
      this.countryCode,
      required this.locName,
      required this.countryName,
      this.locLat,
      this.locLon,
      this.countryCurrency,
      this.currencyName});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? countryCode;
  @override
  final String locName;
  @override
  final String countryName;
  @override
  final num? locLat;
  @override
  final num? locLon;
  @override
  final String? countryCurrency;
  @override
  final String? currencyName;

  @override
  String toString() {
    return 'LocationModel(id: $id, countryCode: $countryCode, locName: $locName, countryName: $countryName, locLat: $locLat, locLon: $locLon, countryCurrency: $countryCurrency, currencyName: $currencyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.locName, locName) || other.locName == locName) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.locLat, locLat) || other.locLat == locLat) &&
            (identical(other.locLon, locLon) || other.locLon == locLon) &&
            (identical(other.countryCurrency, countryCurrency) ||
                other.countryCurrency == countryCurrency) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryCode, locName,
      countryName, locLat, locLon, countryCurrency, currencyName);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {final int? id,
      final String? countryCode,
      required final String locName,
      required final String countryName,
      final num? locLat,
      final num? locLon,
      final String? countryCurrency,
      final String? currencyName}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get countryCode;
  @override
  String get locName;
  @override
  String get countryName;
  @override
  num? get locLat;
  @override
  num? get locLon;
  @override
  String? get countryCurrency;
  @override
  String? get currencyName;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
