// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceInfoModel _$ServiceInfoModelFromJson(Map<String, dynamic> json) {
  return _ServiceInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceInfoModel {
  int get servId => throw _privateConstructorUsedError;
  @JsonKey(name: 'servMcode')
  String? get servMCode => throw _privateConstructorUsedError;
  String? get servName => throw _privateConstructorUsedError;
  String? get servImageUrl => throw _privateConstructorUsedError;

  /// Serializes this ServiceInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceInfoModelCopyWith<ServiceInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInfoModelCopyWith<$Res> {
  factory $ServiceInfoModelCopyWith(
          ServiceInfoModel value, $Res Function(ServiceInfoModel) then) =
      _$ServiceInfoModelCopyWithImpl<$Res, ServiceInfoModel>;
  @useResult
  $Res call(
      {int servId,
      @JsonKey(name: 'servMcode') String? servMCode,
      String? servName,
      String? servImageUrl});
}

/// @nodoc
class _$ServiceInfoModelCopyWithImpl<$Res, $Val extends ServiceInfoModel>
    implements $ServiceInfoModelCopyWith<$Res> {
  _$ServiceInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servId = null,
    Object? servMCode = freezed,
    Object? servName = freezed,
    Object? servImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      servId: null == servId
          ? _value.servId
          : servId // ignore: cast_nullable_to_non_nullable
              as int,
      servMCode: freezed == servMCode
          ? _value.servMCode
          : servMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      servName: freezed == servName
          ? _value.servName
          : servName // ignore: cast_nullable_to_non_nullable
              as String?,
      servImageUrl: freezed == servImageUrl
          ? _value.servImageUrl
          : servImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceInfoModelImplCopyWith<$Res>
    implements $ServiceInfoModelCopyWith<$Res> {
  factory _$$ServiceInfoModelImplCopyWith(_$ServiceInfoModelImpl value,
          $Res Function(_$ServiceInfoModelImpl) then) =
      __$$ServiceInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int servId,
      @JsonKey(name: 'servMcode') String? servMCode,
      String? servName,
      String? servImageUrl});
}

/// @nodoc
class __$$ServiceInfoModelImplCopyWithImpl<$Res>
    extends _$ServiceInfoModelCopyWithImpl<$Res, _$ServiceInfoModelImpl>
    implements _$$ServiceInfoModelImplCopyWith<$Res> {
  __$$ServiceInfoModelImplCopyWithImpl(_$ServiceInfoModelImpl _value,
      $Res Function(_$ServiceInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servId = null,
    Object? servMCode = freezed,
    Object? servName = freezed,
    Object? servImageUrl = freezed,
  }) {
    return _then(_$ServiceInfoModelImpl(
      servId: null == servId
          ? _value.servId
          : servId // ignore: cast_nullable_to_non_nullable
              as int,
      servMCode: freezed == servMCode
          ? _value.servMCode
          : servMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      servName: freezed == servName
          ? _value.servName
          : servName // ignore: cast_nullable_to_non_nullable
              as String?,
      servImageUrl: freezed == servImageUrl
          ? _value.servImageUrl
          : servImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceInfoModelImpl implements _ServiceInfoModel {
  const _$ServiceInfoModelImpl(
      {required this.servId,
      @JsonKey(name: 'servMcode') this.servMCode,
      this.servName,
      this.servImageUrl});

  factory _$ServiceInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceInfoModelImplFromJson(json);

  @override
  final int servId;
  @override
  @JsonKey(name: 'servMcode')
  final String? servMCode;
  @override
  final String? servName;
  @override
  final String? servImageUrl;

  @override
  String toString() {
    return 'ServiceInfoModel(servId: $servId, servMCode: $servMCode, servName: $servName, servImageUrl: $servImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInfoModelImpl &&
            (identical(other.servId, servId) || other.servId == servId) &&
            (identical(other.servMCode, servMCode) ||
                other.servMCode == servMCode) &&
            (identical(other.servName, servName) ||
                other.servName == servName) &&
            (identical(other.servImageUrl, servImageUrl) ||
                other.servImageUrl == servImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, servId, servMCode, servName, servImageUrl);

  /// Create a copy of ServiceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInfoModelImplCopyWith<_$ServiceInfoModelImpl> get copyWith =>
      __$$ServiceInfoModelImplCopyWithImpl<_$ServiceInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceInfoModel implements ServiceInfoModel {
  const factory _ServiceInfoModel(
      {required final int servId,
      @JsonKey(name: 'servMcode') final String? servMCode,
      final String? servName,
      final String? servImageUrl}) = _$ServiceInfoModelImpl;

  factory _ServiceInfoModel.fromJson(Map<String, dynamic> json) =
      _$ServiceInfoModelImpl.fromJson;

  @override
  int get servId;
  @override
  @JsonKey(name: 'servMcode')
  String? get servMCode;
  @override
  String? get servName;
  @override
  String? get servImageUrl;

  /// Create a copy of ServiceInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceInfoModelImplCopyWith<_$ServiceInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
