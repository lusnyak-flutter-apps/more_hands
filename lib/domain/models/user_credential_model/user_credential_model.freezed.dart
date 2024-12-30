// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credential_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserCredentialModel {
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of UserCredentialModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCredentialModelCopyWith<UserCredentialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialModelCopyWith<$Res> {
  factory $UserCredentialModelCopyWith(
          UserCredentialModel value, $Res Function(UserCredentialModel) then) =
      _$UserCredentialModelCopyWithImpl<$Res, UserCredentialModel>;
  @useResult
  $Res call({String name, String username, String password});
}

/// @nodoc
class _$UserCredentialModelCopyWithImpl<$Res, $Val extends UserCredentialModel>
    implements $UserCredentialModelCopyWith<$Res> {
  _$UserCredentialModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCredentialModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCredentialModelImplCopyWith<$Res>
    implements $UserCredentialModelCopyWith<$Res> {
  factory _$$UserCredentialModelImplCopyWith(_$UserCredentialModelImpl value,
          $Res Function(_$UserCredentialModelImpl) then) =
      __$$UserCredentialModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String username, String password});
}

/// @nodoc
class __$$UserCredentialModelImplCopyWithImpl<$Res>
    extends _$UserCredentialModelCopyWithImpl<$Res, _$UserCredentialModelImpl>
    implements _$$UserCredentialModelImplCopyWith<$Res> {
  __$$UserCredentialModelImplCopyWithImpl(_$UserCredentialModelImpl _value,
      $Res Function(_$UserCredentialModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCredentialModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserCredentialModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserCredentialModelImpl implements _UserCredentialModel {
  const _$UserCredentialModelImpl(
      {required this.name, required this.username, required this.password});

  @override
  final String name;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserCredentialModel(name: $name, username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCredentialModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, username, password);

  /// Create a copy of UserCredentialModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCredentialModelImplCopyWith<_$UserCredentialModelImpl> get copyWith =>
      __$$UserCredentialModelImplCopyWithImpl<_$UserCredentialModelImpl>(
          this, _$identity);
}

abstract class _UserCredentialModel implements UserCredentialModel {
  const factory _UserCredentialModel(
      {required final String name,
      required final String username,
      required final String password}) = _$UserCredentialModelImpl;

  @override
  String get name;
  @override
  String get username;
  @override
  String get password;

  /// Create a copy of UserCredentialModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCredentialModelImplCopyWith<_$UserCredentialModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
