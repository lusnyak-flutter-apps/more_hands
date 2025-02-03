// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_additional_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceAdditionalInfoModel _$ServiceAdditionalInfoModelFromJson(
    Map<String, dynamic> json) {
  return _ServiceAdditionalInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceAdditionalInfoModel {
  int get userServiceId => throw _privateConstructorUsedError;
  int? get servMeasId => throw _privateConstructorUsedError;
  @JsonKey(name: 'servMeasMcode')
  MeasureCode? get measureCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'servMcode')
  String? get servMCode => throw _privateConstructorUsedError;
  CurrencyCode? get priceCurrency => throw _privateConstructorUsedError;
  num? get price => throw _privateConstructorUsedError;
  String? get addInfo => throw _privateConstructorUsedError;

  /// Serializes this ServiceAdditionalInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceAdditionalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceAdditionalInfoModelCopyWith<ServiceAdditionalInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAdditionalInfoModelCopyWith<$Res> {
  factory $ServiceAdditionalInfoModelCopyWith(ServiceAdditionalInfoModel value,
          $Res Function(ServiceAdditionalInfoModel) then) =
      _$ServiceAdditionalInfoModelCopyWithImpl<$Res,
          ServiceAdditionalInfoModel>;
  @useResult
  $Res call(
      {int userServiceId,
      int? servMeasId,
      @JsonKey(name: 'servMeasMcode') MeasureCode? measureCode,
      @JsonKey(name: 'servMcode') String? servMCode,
      CurrencyCode? priceCurrency,
      num? price,
      String? addInfo});
}

/// @nodoc
class _$ServiceAdditionalInfoModelCopyWithImpl<$Res,
        $Val extends ServiceAdditionalInfoModel>
    implements $ServiceAdditionalInfoModelCopyWith<$Res> {
  _$ServiceAdditionalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceAdditionalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userServiceId = null,
    Object? servMeasId = freezed,
    Object? measureCode = freezed,
    Object? servMCode = freezed,
    Object? priceCurrency = freezed,
    Object? price = freezed,
    Object? addInfo = freezed,
  }) {
    return _then(_value.copyWith(
      userServiceId: null == userServiceId
          ? _value.userServiceId
          : userServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      servMeasId: freezed == servMeasId
          ? _value.servMeasId
          : servMeasId // ignore: cast_nullable_to_non_nullable
              as int?,
      measureCode: freezed == measureCode
          ? _value.measureCode
          : measureCode // ignore: cast_nullable_to_non_nullable
              as MeasureCode?,
      servMCode: freezed == servMCode
          ? _value.servMCode
          : servMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyCode?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      addInfo: freezed == addInfo
          ? _value.addInfo
          : addInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceAdditionalInfoModelImplCopyWith<$Res>
    implements $ServiceAdditionalInfoModelCopyWith<$Res> {
  factory _$$ServiceAdditionalInfoModelImplCopyWith(
          _$ServiceAdditionalInfoModelImpl value,
          $Res Function(_$ServiceAdditionalInfoModelImpl) then) =
      __$$ServiceAdditionalInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userServiceId,
      int? servMeasId,
      @JsonKey(name: 'servMeasMcode') MeasureCode? measureCode,
      @JsonKey(name: 'servMcode') String? servMCode,
      CurrencyCode? priceCurrency,
      num? price,
      String? addInfo});
}

/// @nodoc
class __$$ServiceAdditionalInfoModelImplCopyWithImpl<$Res>
    extends _$ServiceAdditionalInfoModelCopyWithImpl<$Res,
        _$ServiceAdditionalInfoModelImpl>
    implements _$$ServiceAdditionalInfoModelImplCopyWith<$Res> {
  __$$ServiceAdditionalInfoModelImplCopyWithImpl(
      _$ServiceAdditionalInfoModelImpl _value,
      $Res Function(_$ServiceAdditionalInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceAdditionalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userServiceId = null,
    Object? servMeasId = freezed,
    Object? measureCode = freezed,
    Object? servMCode = freezed,
    Object? priceCurrency = freezed,
    Object? price = freezed,
    Object? addInfo = freezed,
  }) {
    return _then(_$ServiceAdditionalInfoModelImpl(
      userServiceId: null == userServiceId
          ? _value.userServiceId
          : userServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      servMeasId: freezed == servMeasId
          ? _value.servMeasId
          : servMeasId // ignore: cast_nullable_to_non_nullable
              as int?,
      measureCode: freezed == measureCode
          ? _value.measureCode
          : measureCode // ignore: cast_nullable_to_non_nullable
              as MeasureCode?,
      servMCode: freezed == servMCode
          ? _value.servMCode
          : servMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      priceCurrency: freezed == priceCurrency
          ? _value.priceCurrency
          : priceCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyCode?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      addInfo: freezed == addInfo
          ? _value.addInfo
          : addInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceAdditionalInfoModelImpl implements _ServiceAdditionalInfoModel {
  const _$ServiceAdditionalInfoModelImpl(
      {required this.userServiceId,
      this.servMeasId,
      @JsonKey(name: 'servMeasMcode') this.measureCode,
      @JsonKey(name: 'servMcode') this.servMCode,
      this.priceCurrency,
      this.price,
      this.addInfo});

  factory _$ServiceAdditionalInfoModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServiceAdditionalInfoModelImplFromJson(json);

  @override
  final int userServiceId;
  @override
  final int? servMeasId;
  @override
  @JsonKey(name: 'servMeasMcode')
  final MeasureCode? measureCode;
  @override
  @JsonKey(name: 'servMcode')
  final String? servMCode;
  @override
  final CurrencyCode? priceCurrency;
  @override
  final num? price;
  @override
  final String? addInfo;

  @override
  String toString() {
    return 'ServiceAdditionalInfoModel(userServiceId: $userServiceId, servMeasId: $servMeasId, measureCode: $measureCode, servMCode: $servMCode, priceCurrency: $priceCurrency, price: $price, addInfo: $addInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceAdditionalInfoModelImpl &&
            (identical(other.userServiceId, userServiceId) ||
                other.userServiceId == userServiceId) &&
            (identical(other.servMeasId, servMeasId) ||
                other.servMeasId == servMeasId) &&
            (identical(other.measureCode, measureCode) ||
                other.measureCode == measureCode) &&
            (identical(other.servMCode, servMCode) ||
                other.servMCode == servMCode) &&
            (identical(other.priceCurrency, priceCurrency) ||
                other.priceCurrency == priceCurrency) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.addInfo, addInfo) || other.addInfo == addInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userServiceId, servMeasId,
      measureCode, servMCode, priceCurrency, price, addInfo);

  /// Create a copy of ServiceAdditionalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceAdditionalInfoModelImplCopyWith<_$ServiceAdditionalInfoModelImpl>
      get copyWith => __$$ServiceAdditionalInfoModelImplCopyWithImpl<
          _$ServiceAdditionalInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceAdditionalInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceAdditionalInfoModel
    implements ServiceAdditionalInfoModel {
  const factory _ServiceAdditionalInfoModel(
      {required final int userServiceId,
      final int? servMeasId,
      @JsonKey(name: 'servMeasMcode') final MeasureCode? measureCode,
      @JsonKey(name: 'servMcode') final String? servMCode,
      final CurrencyCode? priceCurrency,
      final num? price,
      final String? addInfo}) = _$ServiceAdditionalInfoModelImpl;

  factory _ServiceAdditionalInfoModel.fromJson(Map<String, dynamic> json) =
      _$ServiceAdditionalInfoModelImpl.fromJson;

  @override
  int get userServiceId;
  @override
  int? get servMeasId;
  @override
  @JsonKey(name: 'servMeasMcode')
  MeasureCode? get measureCode;
  @override
  @JsonKey(name: 'servMcode')
  String? get servMCode;
  @override
  CurrencyCode? get priceCurrency;
  @override
  num? get price;
  @override
  String? get addInfo;

  /// Create a copy of ServiceAdditionalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceAdditionalInfoModelImplCopyWith<_$ServiceAdditionalInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
