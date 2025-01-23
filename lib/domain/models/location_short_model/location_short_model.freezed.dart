// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_short_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationShortModel _$LocationShortModelFromJson(Map<String, dynamic> json) {
  return _LocationShortModel.fromJson(json);
}

/// @nodoc
mixin _$LocationShortModel {
  int? get uslId => throw _privateConstructorUsedError;
  int? get usfLocationId => throw _privateConstructorUsedError;
  String get locName => throw _privateConstructorUsedError;

  /// Serializes this LocationShortModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationShortModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationShortModelCopyWith<LocationShortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationShortModelCopyWith<$Res> {
  factory $LocationShortModelCopyWith(
          LocationShortModel value, $Res Function(LocationShortModel) then) =
      _$LocationShortModelCopyWithImpl<$Res, LocationShortModel>;
  @useResult
  $Res call({int? uslId, int? usfLocationId, String locName});
}

/// @nodoc
class _$LocationShortModelCopyWithImpl<$Res, $Val extends LocationShortModel>
    implements $LocationShortModelCopyWith<$Res> {
  _$LocationShortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationShortModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uslId = freezed,
    Object? usfLocationId = freezed,
    Object? locName = null,
  }) {
    return _then(_value.copyWith(
      uslId: freezed == uslId
          ? _value.uslId
          : uslId // ignore: cast_nullable_to_non_nullable
              as int?,
      usfLocationId: freezed == usfLocationId
          ? _value.usfLocationId
          : usfLocationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locName: null == locName
          ? _value.locName
          : locName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationShortModelImplCopyWith<$Res>
    implements $LocationShortModelCopyWith<$Res> {
  factory _$$LocationShortModelImplCopyWith(_$LocationShortModelImpl value,
          $Res Function(_$LocationShortModelImpl) then) =
      __$$LocationShortModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? uslId, int? usfLocationId, String locName});
}

/// @nodoc
class __$$LocationShortModelImplCopyWithImpl<$Res>
    extends _$LocationShortModelCopyWithImpl<$Res, _$LocationShortModelImpl>
    implements _$$LocationShortModelImplCopyWith<$Res> {
  __$$LocationShortModelImplCopyWithImpl(_$LocationShortModelImpl _value,
      $Res Function(_$LocationShortModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationShortModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uslId = freezed,
    Object? usfLocationId = freezed,
    Object? locName = null,
  }) {
    return _then(_$LocationShortModelImpl(
      uslId: freezed == uslId
          ? _value.uslId
          : uslId // ignore: cast_nullable_to_non_nullable
              as int?,
      usfLocationId: freezed == usfLocationId
          ? _value.usfLocationId
          : usfLocationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locName: null == locName
          ? _value.locName
          : locName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LocationShortModelImpl implements _LocationShortModel {
  const _$LocationShortModelImpl(
      {this.uslId, this.usfLocationId, required this.locName});

  factory _$LocationShortModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationShortModelImplFromJson(json);

  @override
  final int? uslId;
  @override
  final int? usfLocationId;
  @override
  final String locName;

  @override
  String toString() {
    return 'LocationShortModel(uslId: $uslId, usfLocationId: $usfLocationId, locName: $locName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationShortModelImpl &&
            (identical(other.uslId, uslId) || other.uslId == uslId) &&
            (identical(other.usfLocationId, usfLocationId) ||
                other.usfLocationId == usfLocationId) &&
            (identical(other.locName, locName) || other.locName == locName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uslId, usfLocationId, locName);

  /// Create a copy of LocationShortModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationShortModelImplCopyWith<_$LocationShortModelImpl> get copyWith =>
      __$$LocationShortModelImplCopyWithImpl<_$LocationShortModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationShortModelImplToJson(
      this,
    );
  }
}

abstract class _LocationShortModel implements LocationShortModel {
  const factory _LocationShortModel(
      {final int? uslId,
      final int? usfLocationId,
      required final String locName}) = _$LocationShortModelImpl;

  factory _LocationShortModel.fromJson(Map<String, dynamic> json) =
      _$LocationShortModelImpl.fromJson;

  @override
  int? get uslId;
  @override
  int? get usfLocationId;
  @override
  String get locName;

  /// Create a copy of LocationShortModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationShortModelImplCopyWith<_$LocationShortModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
