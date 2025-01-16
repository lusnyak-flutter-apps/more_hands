// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  int get id => throw _privateConstructorUsedError;
  int get senderId => throw _privateConstructorUsedError;
  int get receiverId => throw _privateConstructorUsedError;
  int get userServiceId => throw _privateConstructorUsedError;
  int get serviceId => throw _privateConstructorUsedError;
  num get userRating => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get userFirstName => throw _privateConstructorUsedError;
  String? get userLastName => throw _privateConstructorUsedError;
  String? get userMiddleName => throw _privateConstructorUsedError;
  String? get rqText => throw _privateConstructorUsedError;
  @JsonKey(name: 'createDttm')
  DateTime? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'modifyDttm')
  DateTime? get modifyDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'rqStatus')
  RequestStatus get status => throw _privateConstructorUsedError;

  /// Serializes this RequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res, RequestModel>;
  @useResult
  $Res call(
      {int id,
      int senderId,
      int receiverId,
      int userServiceId,
      int serviceId,
      num userRating,
      String? profileImageUrl,
      String? userFirstName,
      String? userLastName,
      String? userMiddleName,
      String? rqText,
      @JsonKey(name: 'createDttm') DateTime? createDate,
      @JsonKey(name: 'modifyDttm') DateTime? modifyDate,
      @JsonKey(name: 'rqStatus') RequestStatus status});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res, $Val extends RequestModel>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? receiverId = null,
    Object? userServiceId = null,
    Object? serviceId = null,
    Object? userRating = null,
    Object? profileImageUrl = freezed,
    Object? userFirstName = freezed,
    Object? userLastName = freezed,
    Object? userMiddleName = freezed,
    Object? rqText = freezed,
    Object? createDate = freezed,
    Object? modifyDate = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
      userServiceId: null == userServiceId
          ? _value.userServiceId
          : userServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as num,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirstName: freezed == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLastName: freezed == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userMiddleName: freezed == userMiddleName
          ? _value.userMiddleName
          : userMiddleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rqText: freezed == rqText
          ? _value.rqText
          : rqText // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifyDate: freezed == modifyDate
          ? _value.modifyDate
          : modifyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestModelImplCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$RequestModelImplCopyWith(
          _$RequestModelImpl value, $Res Function(_$RequestModelImpl) then) =
      __$$RequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int senderId,
      int receiverId,
      int userServiceId,
      int serviceId,
      num userRating,
      String? profileImageUrl,
      String? userFirstName,
      String? userLastName,
      String? userMiddleName,
      String? rqText,
      @JsonKey(name: 'createDttm') DateTime? createDate,
      @JsonKey(name: 'modifyDttm') DateTime? modifyDate,
      @JsonKey(name: 'rqStatus') RequestStatus status});
}

/// @nodoc
class __$$RequestModelImplCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res, _$RequestModelImpl>
    implements _$$RequestModelImplCopyWith<$Res> {
  __$$RequestModelImplCopyWithImpl(
      _$RequestModelImpl _value, $Res Function(_$RequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? receiverId = null,
    Object? userServiceId = null,
    Object? serviceId = null,
    Object? userRating = null,
    Object? profileImageUrl = freezed,
    Object? userFirstName = freezed,
    Object? userLastName = freezed,
    Object? userMiddleName = freezed,
    Object? rqText = freezed,
    Object? createDate = freezed,
    Object? modifyDate = freezed,
    Object? status = null,
  }) {
    return _then(_$RequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int,
      userServiceId: null == userServiceId
          ? _value.userServiceId
          : userServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as num,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirstName: freezed == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLastName: freezed == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userMiddleName: freezed == userMiddleName
          ? _value.userMiddleName
          : userMiddleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rqText: freezed == rqText
          ? _value.rqText
          : rqText // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifyDate: freezed == modifyDate
          ? _value.modifyDate
          : modifyDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestModelImpl implements _RequestModel {
  const _$RequestModelImpl(
      {this.id = 0,
      this.senderId = 0,
      this.receiverId = 0,
      this.userServiceId = 0,
      this.serviceId = 0,
      this.userRating = 0,
      this.profileImageUrl,
      this.userFirstName,
      this.userLastName,
      this.userMiddleName,
      this.rqText,
      @JsonKey(name: 'createDttm') this.createDate,
      @JsonKey(name: 'modifyDttm') this.modifyDate,
      @JsonKey(name: 'rqStatus') this.status = RequestStatus.new_});

  factory _$RequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int senderId;
  @override
  @JsonKey()
  final int receiverId;
  @override
  @JsonKey()
  final int userServiceId;
  @override
  @JsonKey()
  final int serviceId;
  @override
  @JsonKey()
  final num userRating;
  @override
  final String? profileImageUrl;
  @override
  final String? userFirstName;
  @override
  final String? userLastName;
  @override
  final String? userMiddleName;
  @override
  final String? rqText;
  @override
  @JsonKey(name: 'createDttm')
  final DateTime? createDate;
  @override
  @JsonKey(name: 'modifyDttm')
  final DateTime? modifyDate;
  @override
  @JsonKey(name: 'rqStatus')
  final RequestStatus status;

  @override
  String toString() {
    return 'RequestModel(id: $id, senderId: $senderId, receiverId: $receiverId, userServiceId: $userServiceId, serviceId: $serviceId, userRating: $userRating, profileImageUrl: $profileImageUrl, userFirstName: $userFirstName, userLastName: $userLastName, userMiddleName: $userMiddleName, rqText: $rqText, createDate: $createDate, modifyDate: $modifyDate, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.userServiceId, userServiceId) ||
                other.userServiceId == userServiceId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.userMiddleName, userMiddleName) ||
                other.userMiddleName == userMiddleName) &&
            (identical(other.rqText, rqText) || other.rqText == rqText) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.modifyDate, modifyDate) ||
                other.modifyDate == modifyDate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      senderId,
      receiverId,
      userServiceId,
      serviceId,
      userRating,
      profileImageUrl,
      userFirstName,
      userLastName,
      userMiddleName,
      rqText,
      createDate,
      modifyDate,
      status);

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestModelImplCopyWith<_$RequestModelImpl> get copyWith =>
      __$$RequestModelImplCopyWithImpl<_$RequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestModelImplToJson(
      this,
    );
  }
}

abstract class _RequestModel implements RequestModel {
  const factory _RequestModel(
          {final int id,
          final int senderId,
          final int receiverId,
          final int userServiceId,
          final int serviceId,
          final num userRating,
          final String? profileImageUrl,
          final String? userFirstName,
          final String? userLastName,
          final String? userMiddleName,
          final String? rqText,
          @JsonKey(name: 'createDttm') final DateTime? createDate,
          @JsonKey(name: 'modifyDttm') final DateTime? modifyDate,
          @JsonKey(name: 'rqStatus') final RequestStatus status}) =
      _$RequestModelImpl;

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$RequestModelImpl.fromJson;

  @override
  int get id;
  @override
  int get senderId;
  @override
  int get receiverId;
  @override
  int get userServiceId;
  @override
  int get serviceId;
  @override
  num get userRating;
  @override
  String? get profileImageUrl;
  @override
  String? get userFirstName;
  @override
  String? get userLastName;
  @override
  String? get userMiddleName;
  @override
  String? get rqText;
  @override
  @JsonKey(name: 'createDttm')
  DateTime? get createDate;
  @override
  @JsonKey(name: 'modifyDttm')
  DateTime? get modifyDate;
  @override
  @JsonKey(name: 'rqStatus')
  RequestStatus get status;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestModelImplCopyWith<_$RequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
