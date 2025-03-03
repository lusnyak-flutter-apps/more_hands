// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_req_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastReqInfoModel _$LastReqInfoModelFromJson(Map<String, dynamic> json) {
  return _LastReqInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LastReqInfoModel {
  String? get sreqText => throw _privateConstructorUsedError;
  int? get sreqId => throw _privateConstructorUsedError;
  RequestStatus? get sreqStatus => throw _privateConstructorUsedError;
  String? get rreqText => throw _privateConstructorUsedError;
  int? get rreqId => throw _privateConstructorUsedError;
  RequestStatus? get rreqStatus => throw _privateConstructorUsedError;

  /// Serializes this LastReqInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastReqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastReqInfoModelCopyWith<LastReqInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastReqInfoModelCopyWith<$Res> {
  factory $LastReqInfoModelCopyWith(
          LastReqInfoModel value, $Res Function(LastReqInfoModel) then) =
      _$LastReqInfoModelCopyWithImpl<$Res, LastReqInfoModel>;
  @useResult
  $Res call(
      {String? sreqText,
      int? sreqId,
      RequestStatus? sreqStatus,
      String? rreqText,
      int? rreqId,
      RequestStatus? rreqStatus});
}

/// @nodoc
class _$LastReqInfoModelCopyWithImpl<$Res, $Val extends LastReqInfoModel>
    implements $LastReqInfoModelCopyWith<$Res> {
  _$LastReqInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastReqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sreqText = freezed,
    Object? sreqId = freezed,
    Object? sreqStatus = freezed,
    Object? rreqText = freezed,
    Object? rreqId = freezed,
    Object? rreqStatus = freezed,
  }) {
    return _then(_value.copyWith(
      sreqText: freezed == sreqText
          ? _value.sreqText
          : sreqText // ignore: cast_nullable_to_non_nullable
              as String?,
      sreqId: freezed == sreqId
          ? _value.sreqId
          : sreqId // ignore: cast_nullable_to_non_nullable
              as int?,
      sreqStatus: freezed == sreqStatus
          ? _value.sreqStatus
          : sreqStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      rreqText: freezed == rreqText
          ? _value.rreqText
          : rreqText // ignore: cast_nullable_to_non_nullable
              as String?,
      rreqId: freezed == rreqId
          ? _value.rreqId
          : rreqId // ignore: cast_nullable_to_non_nullable
              as int?,
      rreqStatus: freezed == rreqStatus
          ? _value.rreqStatus
          : rreqStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastReqInfoModelImplCopyWith<$Res>
    implements $LastReqInfoModelCopyWith<$Res> {
  factory _$$LastReqInfoModelImplCopyWith(_$LastReqInfoModelImpl value,
          $Res Function(_$LastReqInfoModelImpl) then) =
      __$$LastReqInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sreqText,
      int? sreqId,
      RequestStatus? sreqStatus,
      String? rreqText,
      int? rreqId,
      RequestStatus? rreqStatus});
}

/// @nodoc
class __$$LastReqInfoModelImplCopyWithImpl<$Res>
    extends _$LastReqInfoModelCopyWithImpl<$Res, _$LastReqInfoModelImpl>
    implements _$$LastReqInfoModelImplCopyWith<$Res> {
  __$$LastReqInfoModelImplCopyWithImpl(_$LastReqInfoModelImpl _value,
      $Res Function(_$LastReqInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LastReqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sreqText = freezed,
    Object? sreqId = freezed,
    Object? sreqStatus = freezed,
    Object? rreqText = freezed,
    Object? rreqId = freezed,
    Object? rreqStatus = freezed,
  }) {
    return _then(_$LastReqInfoModelImpl(
      sreqText: freezed == sreqText
          ? _value.sreqText
          : sreqText // ignore: cast_nullable_to_non_nullable
              as String?,
      sreqId: freezed == sreqId
          ? _value.sreqId
          : sreqId // ignore: cast_nullable_to_non_nullable
              as int?,
      sreqStatus: freezed == sreqStatus
          ? _value.sreqStatus
          : sreqStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      rreqText: freezed == rreqText
          ? _value.rreqText
          : rreqText // ignore: cast_nullable_to_non_nullable
              as String?,
      rreqId: freezed == rreqId
          ? _value.rreqId
          : rreqId // ignore: cast_nullable_to_non_nullable
              as int?,
      rreqStatus: freezed == rreqStatus
          ? _value.rreqStatus
          : rreqStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastReqInfoModelImpl implements _LastReqInfoModel {
  const _$LastReqInfoModelImpl(
      {this.sreqText,
      this.sreqId,
      this.sreqStatus,
      this.rreqText,
      this.rreqId,
      this.rreqStatus});

  factory _$LastReqInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastReqInfoModelImplFromJson(json);

  @override
  final String? sreqText;
  @override
  final int? sreqId;
  @override
  final RequestStatus? sreqStatus;
  @override
  final String? rreqText;
  @override
  final int? rreqId;
  @override
  final RequestStatus? rreqStatus;

  @override
  String toString() {
    return 'LastReqInfoModel(sreqText: $sreqText, sreqId: $sreqId, sreqStatus: $sreqStatus, rreqText: $rreqText, rreqId: $rreqId, rreqStatus: $rreqStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastReqInfoModelImpl &&
            (identical(other.sreqText, sreqText) ||
                other.sreqText == sreqText) &&
            (identical(other.sreqId, sreqId) || other.sreqId == sreqId) &&
            (identical(other.sreqStatus, sreqStatus) ||
                other.sreqStatus == sreqStatus) &&
            (identical(other.rreqText, rreqText) ||
                other.rreqText == rreqText) &&
            (identical(other.rreqId, rreqId) || other.rreqId == rreqId) &&
            (identical(other.rreqStatus, rreqStatus) ||
                other.rreqStatus == rreqStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, sreqText, sreqId, sreqStatus, rreqText, rreqId, rreqStatus);

  /// Create a copy of LastReqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastReqInfoModelImplCopyWith<_$LastReqInfoModelImpl> get copyWith =>
      __$$LastReqInfoModelImplCopyWithImpl<_$LastReqInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastReqInfoModelImplToJson(
      this,
    );
  }
}

abstract class _LastReqInfoModel implements LastReqInfoModel {
  const factory _LastReqInfoModel(
      {final String? sreqText,
      final int? sreqId,
      final RequestStatus? sreqStatus,
      final String? rreqText,
      final int? rreqId,
      final RequestStatus? rreqStatus}) = _$LastReqInfoModelImpl;

  factory _LastReqInfoModel.fromJson(Map<String, dynamic> json) =
      _$LastReqInfoModelImpl.fromJson;

  @override
  String? get sreqText;
  @override
  int? get sreqId;
  @override
  RequestStatus? get sreqStatus;
  @override
  String? get rreqText;
  @override
  int? get rreqId;
  @override
  RequestStatus? get rreqStatus;

  /// Create a copy of LastReqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastReqInfoModelImplCopyWith<_$LastReqInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
