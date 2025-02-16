// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestsCountModel _$RequestsCountModelFromJson(Map<String, dynamic> json) {
  return _RequestsCountModel.fromJson(json);
}

/// @nodoc
mixin _$RequestsCountModel {
  int get countSeen => throw _privateConstructorUsedError;
  int get countNotSeen => throw _privateConstructorUsedError;

  /// Serializes this RequestsCountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestsCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestsCountModelCopyWith<RequestsCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsCountModelCopyWith<$Res> {
  factory $RequestsCountModelCopyWith(
          RequestsCountModel value, $Res Function(RequestsCountModel) then) =
      _$RequestsCountModelCopyWithImpl<$Res, RequestsCountModel>;
  @useResult
  $Res call({int countSeen, int countNotSeen});
}

/// @nodoc
class _$RequestsCountModelCopyWithImpl<$Res, $Val extends RequestsCountModel>
    implements $RequestsCountModelCopyWith<$Res> {
  _$RequestsCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestsCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countSeen = null,
    Object? countNotSeen = null,
  }) {
    return _then(_value.copyWith(
      countSeen: null == countSeen
          ? _value.countSeen
          : countSeen // ignore: cast_nullable_to_non_nullable
              as int,
      countNotSeen: null == countNotSeen
          ? _value.countNotSeen
          : countNotSeen // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestsCountModelImplCopyWith<$Res>
    implements $RequestsCountModelCopyWith<$Res> {
  factory _$$RequestsCountModelImplCopyWith(_$RequestsCountModelImpl value,
          $Res Function(_$RequestsCountModelImpl) then) =
      __$$RequestsCountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int countSeen, int countNotSeen});
}

/// @nodoc
class __$$RequestsCountModelImplCopyWithImpl<$Res>
    extends _$RequestsCountModelCopyWithImpl<$Res, _$RequestsCountModelImpl>
    implements _$$RequestsCountModelImplCopyWith<$Res> {
  __$$RequestsCountModelImplCopyWithImpl(_$RequestsCountModelImpl _value,
      $Res Function(_$RequestsCountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countSeen = null,
    Object? countNotSeen = null,
  }) {
    return _then(_$RequestsCountModelImpl(
      countSeen: null == countSeen
          ? _value.countSeen
          : countSeen // ignore: cast_nullable_to_non_nullable
              as int,
      countNotSeen: null == countNotSeen
          ? _value.countNotSeen
          : countNotSeen // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestsCountModelImpl implements _RequestsCountModel {
  const _$RequestsCountModelImpl({this.countSeen = 0, this.countNotSeen = 0});

  factory _$RequestsCountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestsCountModelImplFromJson(json);

  @override
  @JsonKey()
  final int countSeen;
  @override
  @JsonKey()
  final int countNotSeen;

  @override
  String toString() {
    return 'RequestsCountModel(countSeen: $countSeen, countNotSeen: $countNotSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsCountModelImpl &&
            (identical(other.countSeen, countSeen) ||
                other.countSeen == countSeen) &&
            (identical(other.countNotSeen, countNotSeen) ||
                other.countNotSeen == countNotSeen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countSeen, countNotSeen);

  /// Create a copy of RequestsCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsCountModelImplCopyWith<_$RequestsCountModelImpl> get copyWith =>
      __$$RequestsCountModelImplCopyWithImpl<_$RequestsCountModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestsCountModelImplToJson(
      this,
    );
  }
}

abstract class _RequestsCountModel implements RequestsCountModel {
  const factory _RequestsCountModel(
      {final int countSeen, final int countNotSeen}) = _$RequestsCountModelImpl;

  factory _RequestsCountModel.fromJson(Map<String, dynamic> json) =
      _$RequestsCountModelImpl.fromJson;

  @override
  int get countSeen;
  @override
  int get countNotSeen;

  /// Create a copy of RequestsCountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestsCountModelImplCopyWith<_$RequestsCountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
