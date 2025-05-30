// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  String get token => throw _privateConstructorUsedError;
  int get expiration => throw _privateConstructorUsedError;
  @JsonKey(name: 'expirationDate')
  String get expirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshExpiration')
  int get refreshExpiration => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshExpirationDate')
  String get refreshExpirationDate => throw _privateConstructorUsedError;
  String? get refCode => throw _privateConstructorUsedError;
  int? get closestLoc => throw _privateConstructorUsedError;
  bool? get existingUser => throw _privateConstructorUsedError;

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call(
      {String token,
      int expiration,
      @JsonKey(name: 'expirationDate') String expirationDate,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'refreshExpiration') int refreshExpiration,
      @JsonKey(name: 'refreshExpirationDate') String refreshExpirationDate,
      String? refCode,
      int? closestLoc,
      bool? existingUser});
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expiration = null,
    Object? expirationDate = null,
    Object? refreshToken = null,
    Object? refreshExpiration = null,
    Object? refreshExpirationDate = null,
    Object? refCode = freezed,
    Object? closestLoc = freezed,
    Object? existingUser = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshExpiration: null == refreshExpiration
          ? _value.refreshExpiration
          : refreshExpiration // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpirationDate: null == refreshExpirationDate
          ? _value.refreshExpirationDate
          : refreshExpirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      closestLoc: freezed == closestLoc
          ? _value.closestLoc
          : closestLoc // ignore: cast_nullable_to_non_nullable
              as int?,
      existingUser: freezed == existingUser
          ? _value.existingUser
          : existingUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      int expiration,
      @JsonKey(name: 'expirationDate') String expirationDate,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'refreshExpiration') int refreshExpiration,
      @JsonKey(name: 'refreshExpirationDate') String refreshExpirationDate,
      String? refCode,
      int? closestLoc,
      bool? existingUser});
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expiration = null,
    Object? expirationDate = null,
    Object? refreshToken = null,
    Object? refreshExpiration = null,
    Object? refreshExpirationDate = null,
    Object? refCode = freezed,
    Object? closestLoc = freezed,
    Object? existingUser = freezed,
  }) {
    return _then(_$LoginResponseModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshExpiration: null == refreshExpiration
          ? _value.refreshExpiration
          : refreshExpiration // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpirationDate: null == refreshExpirationDate
          ? _value.refreshExpirationDate
          : refreshExpirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      closestLoc: freezed == closestLoc
          ? _value.closestLoc
          : closestLoc // ignore: cast_nullable_to_non_nullable
              as int?,
      existingUser: freezed == existingUser
          ? _value.existingUser
          : existingUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LoginResponseModelImpl implements _LoginResponseModel {
  const _$LoginResponseModelImpl(
      {required this.token,
      required this.expiration,
      @JsonKey(name: 'expirationDate') required this.expirationDate,
      @JsonKey(name: 'refreshToken') required this.refreshToken,
      @JsonKey(name: 'refreshExpiration') required this.refreshExpiration,
      @JsonKey(name: 'refreshExpirationDate')
      required this.refreshExpirationDate,
      required this.refCode,
      required this.closestLoc,
      required this.existingUser});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  final String token;
  @override
  final int expiration;
  @override
  @JsonKey(name: 'expirationDate')
  final String expirationDate;
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @override
  @JsonKey(name: 'refreshExpiration')
  final int refreshExpiration;
  @override
  @JsonKey(name: 'refreshExpirationDate')
  final String refreshExpirationDate;
  @override
  final String? refCode;
  @override
  final int? closestLoc;
  @override
  final bool? existingUser;

  @override
  String toString() {
    return 'LoginResponseModel(token: $token, expiration: $expiration, expirationDate: $expirationDate, refreshToken: $refreshToken, refreshExpiration: $refreshExpiration, refreshExpirationDate: $refreshExpirationDate, refCode: $refCode, closestLoc: $closestLoc, existingUser: $existingUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.refreshExpiration, refreshExpiration) ||
                other.refreshExpiration == refreshExpiration) &&
            (identical(other.refreshExpirationDate, refreshExpirationDate) ||
                other.refreshExpirationDate == refreshExpirationDate) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.closestLoc, closestLoc) ||
                other.closestLoc == closestLoc) &&
            (identical(other.existingUser, existingUser) ||
                other.existingUser == existingUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      expiration,
      expirationDate,
      refreshToken,
      refreshExpiration,
      refreshExpirationDate,
      refCode,
      closestLoc,
      existingUser);

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  const factory _LoginResponseModel(
      {required final String token,
      required final int expiration,
      @JsonKey(name: 'expirationDate') required final String expirationDate,
      @JsonKey(name: 'refreshToken') required final String refreshToken,
      @JsonKey(name: 'refreshExpiration') required final int refreshExpiration,
      @JsonKey(name: 'refreshExpirationDate')
      required final String refreshExpirationDate,
      required final String? refCode,
      required final int? closestLoc,
      required final bool? existingUser}) = _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  String get token;
  @override
  int get expiration;
  @override
  @JsonKey(name: 'expirationDate')
  String get expirationDate;
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;
  @override
  @JsonKey(name: 'refreshExpiration')
  int get refreshExpiration;
  @override
  @JsonKey(name: 'refreshExpirationDate')
  String get refreshExpirationDate;
  @override
  String? get refCode;
  @override
  int? get closestLoc;
  @override
  bool? get existingUser;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
