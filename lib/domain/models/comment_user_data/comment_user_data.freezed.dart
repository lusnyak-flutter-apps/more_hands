// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentUserDataModel _$CommentUserDataModelFromJson(Map<String, dynamic> json) {
  return _CommentUserDataModel.fromJson(json);
}

/// @nodoc
mixin _$CommentUserDataModel {
  int? get userId => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get userFirstName => throw _privateConstructorUsedError;
  String? get userLastName => throw _privateConstructorUsedError;
  String? get userMiddleName => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  double? get userRating => throw _privateConstructorUsedError;

  /// Serializes this CommentUserDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentUserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentUserDataModelCopyWith<CommentUserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentUserDataModelCopyWith<$Res> {
  factory $CommentUserDataModelCopyWith(CommentUserDataModel value,
          $Res Function(CommentUserDataModel) then) =
      _$CommentUserDataModelCopyWithImpl<$Res, CommentUserDataModel>;
  @useResult
  $Res call(
      {int? userId,
      String? userLogin,
      String? userFirstName,
      String? userLastName,
      String? userMiddleName,
      String? profileImageUrl,
      double? userRating});
}

/// @nodoc
class _$CommentUserDataModelCopyWithImpl<$Res,
        $Val extends CommentUserDataModel>
    implements $CommentUserDataModelCopyWith<$Res> {
  _$CommentUserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentUserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userFirstName = freezed,
    Object? userLastName = freezed,
    Object? userMiddleName = freezed,
    Object? profileImageUrl = freezed,
    Object? userRating = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
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
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentUserDataModelImplCopyWith<$Res>
    implements $CommentUserDataModelCopyWith<$Res> {
  factory _$$CommentUserDataModelImplCopyWith(_$CommentUserDataModelImpl value,
          $Res Function(_$CommentUserDataModelImpl) then) =
      __$$CommentUserDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      String? userLogin,
      String? userFirstName,
      String? userLastName,
      String? userMiddleName,
      String? profileImageUrl,
      double? userRating});
}

/// @nodoc
class __$$CommentUserDataModelImplCopyWithImpl<$Res>
    extends _$CommentUserDataModelCopyWithImpl<$Res, _$CommentUserDataModelImpl>
    implements _$$CommentUserDataModelImplCopyWith<$Res> {
  __$$CommentUserDataModelImplCopyWithImpl(_$CommentUserDataModelImpl _value,
      $Res Function(_$CommentUserDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentUserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userFirstName = freezed,
    Object? userLastName = freezed,
    Object? userMiddleName = freezed,
    Object? profileImageUrl = freezed,
    Object? userRating = freezed,
  }) {
    return _then(_$CommentUserDataModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
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
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentUserDataModelImpl implements _CommentUserDataModel {
  const _$CommentUserDataModelImpl(
      {this.userId,
      this.userLogin,
      this.userFirstName,
      this.userLastName,
      this.userMiddleName,
      this.profileImageUrl,
      this.userRating});

  factory _$CommentUserDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentUserDataModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final String? userLogin;
  @override
  final String? userFirstName;
  @override
  final String? userLastName;
  @override
  final String? userMiddleName;
  @override
  final String? profileImageUrl;
  @override
  final double? userRating;

  @override
  String toString() {
    return 'CommentUserDataModel(userId: $userId, userLogin: $userLogin, userFirstName: $userFirstName, userLastName: $userLastName, userMiddleName: $userMiddleName, profileImageUrl: $profileImageUrl, userRating: $userRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentUserDataModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.userMiddleName, userMiddleName) ||
                other.userMiddleName == userMiddleName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userLogin, userFirstName,
      userLastName, userMiddleName, profileImageUrl, userRating);

  /// Create a copy of CommentUserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentUserDataModelImplCopyWith<_$CommentUserDataModelImpl>
      get copyWith =>
          __$$CommentUserDataModelImplCopyWithImpl<_$CommentUserDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentUserDataModelImplToJson(
      this,
    );
  }
}

abstract class _CommentUserDataModel implements CommentUserDataModel {
  const factory _CommentUserDataModel(
      {final int? userId,
      final String? userLogin,
      final String? userFirstName,
      final String? userLastName,
      final String? userMiddleName,
      final String? profileImageUrl,
      final double? userRating}) = _$CommentUserDataModelImpl;

  factory _CommentUserDataModel.fromJson(Map<String, dynamic> json) =
      _$CommentUserDataModelImpl.fromJson;

  @override
  int? get userId;
  @override
  String? get userLogin;
  @override
  String? get userFirstName;
  @override
  String? get userLastName;
  @override
  String? get userMiddleName;
  @override
  String? get profileImageUrl;
  @override
  double? get userRating;

  /// Create a copy of CommentUserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentUserDataModelImplCopyWith<_$CommentUserDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
