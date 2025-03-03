// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SocialAuthModel? socialAuthModel) authorized,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationState value) initial,
    required TResult Function(_AuthorizationAuthorizedState value) authorized,
    required TResult Function(_AuthorizationUnauthorizedState value)
        unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationState value)? initial,
    TResult? Function(_AuthorizationAuthorizedState value)? authorized,
    TResult? Function(_AuthorizationUnauthorizedState value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationState value)? initial,
    TResult Function(_AuthorizationAuthorizedState value)? authorized,
    TResult Function(_AuthorizationUnauthorizedState value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthorizationStateImplCopyWith<$Res> {
  factory _$$AuthorizationStateImplCopyWith(_$AuthorizationStateImpl value,
          $Res Function(_$AuthorizationStateImpl) then) =
      __$$AuthorizationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizationStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$AuthorizationStateImpl>
    implements _$$AuthorizationStateImplCopyWith<$Res> {
  __$$AuthorizationStateImplCopyWithImpl(_$AuthorizationStateImpl _value,
      $Res Function(_$AuthorizationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorizationStateImpl implements _AuthorizationState {
  const _$AuthorizationStateImpl();

  @override
  String toString() {
    return 'AuthorizationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorizationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SocialAuthModel? socialAuthModel) authorized,
    required TResult Function() unauthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationState value) initial,
    required TResult Function(_AuthorizationAuthorizedState value) authorized,
    required TResult Function(_AuthorizationUnauthorizedState value)
        unauthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationState value)? initial,
    TResult? Function(_AuthorizationAuthorizedState value)? authorized,
    TResult? Function(_AuthorizationUnauthorizedState value)? unauthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationState value)? initial,
    TResult Function(_AuthorizationAuthorizedState value)? authorized,
    TResult Function(_AuthorizationUnauthorizedState value)? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationState implements AuthorizationState {
  const factory _AuthorizationState() = _$AuthorizationStateImpl;
}

/// @nodoc
abstract class _$$AuthorizationAuthorizedStateImplCopyWith<$Res> {
  factory _$$AuthorizationAuthorizedStateImplCopyWith(
          _$AuthorizationAuthorizedStateImpl value,
          $Res Function(_$AuthorizationAuthorizedStateImpl) then) =
      __$$AuthorizationAuthorizedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialAuthModel? socialAuthModel});
}

/// @nodoc
class __$$AuthorizationAuthorizedStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$AuthorizationAuthorizedStateImpl>
    implements _$$AuthorizationAuthorizedStateImplCopyWith<$Res> {
  __$$AuthorizationAuthorizedStateImplCopyWithImpl(
      _$AuthorizationAuthorizedStateImpl _value,
      $Res Function(_$AuthorizationAuthorizedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socialAuthModel = freezed,
  }) {
    return _then(_$AuthorizationAuthorizedStateImpl(
      freezed == socialAuthModel
          ? _value.socialAuthModel
          : socialAuthModel // ignore: cast_nullable_to_non_nullable
              as SocialAuthModel?,
    ));
  }
}

/// @nodoc

class _$AuthorizationAuthorizedStateImpl
    implements _AuthorizationAuthorizedState {
  const _$AuthorizationAuthorizedStateImpl(this.socialAuthModel);

  @override
  final SocialAuthModel? socialAuthModel;

  @override
  String toString() {
    return 'AuthorizationState.authorized(socialAuthModel: $socialAuthModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationAuthorizedStateImpl &&
            (identical(other.socialAuthModel, socialAuthModel) ||
                other.socialAuthModel == socialAuthModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, socialAuthModel);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationAuthorizedStateImplCopyWith<
          _$AuthorizationAuthorizedStateImpl>
      get copyWith => __$$AuthorizationAuthorizedStateImplCopyWithImpl<
          _$AuthorizationAuthorizedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SocialAuthModel? socialAuthModel) authorized,
    required TResult Function() unauthorized,
  }) {
    return authorized(socialAuthModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return authorized?.call(socialAuthModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(socialAuthModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationState value) initial,
    required TResult Function(_AuthorizationAuthorizedState value) authorized,
    required TResult Function(_AuthorizationUnauthorizedState value)
        unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationState value)? initial,
    TResult? Function(_AuthorizationAuthorizedState value)? authorized,
    TResult? Function(_AuthorizationUnauthorizedState value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationState value)? initial,
    TResult Function(_AuthorizationAuthorizedState value)? authorized,
    TResult Function(_AuthorizationUnauthorizedState value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationAuthorizedState implements AuthorizationState {
  const factory _AuthorizationAuthorizedState(
          final SocialAuthModel? socialAuthModel) =
      _$AuthorizationAuthorizedStateImpl;

  SocialAuthModel? get socialAuthModel;

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorizationAuthorizedStateImplCopyWith<
          _$AuthorizationAuthorizedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizationUnauthorizedStateImplCopyWith<$Res> {
  factory _$$AuthorizationUnauthorizedStateImplCopyWith(
          _$AuthorizationUnauthorizedStateImpl value,
          $Res Function(_$AuthorizationUnauthorizedStateImpl) then) =
      __$$AuthorizationUnauthorizedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizationUnauthorizedStateImplCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res,
        _$AuthorizationUnauthorizedStateImpl>
    implements _$$AuthorizationUnauthorizedStateImplCopyWith<$Res> {
  __$$AuthorizationUnauthorizedStateImplCopyWithImpl(
      _$AuthorizationUnauthorizedStateImpl _value,
      $Res Function(_$AuthorizationUnauthorizedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthorizationUnauthorizedStateImpl
    implements _AuthorizationUnauthorizedState {
  const _$AuthorizationUnauthorizedStateImpl();

  @override
  String toString() {
    return 'AuthorizationState.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationUnauthorizedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SocialAuthModel? socialAuthModel) authorized,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SocialAuthModel? socialAuthModel)? authorized,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationState value) initial,
    required TResult Function(_AuthorizationAuthorizedState value) authorized,
    required TResult Function(_AuthorizationUnauthorizedState value)
        unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationState value)? initial,
    TResult? Function(_AuthorizationAuthorizedState value)? authorized,
    TResult? Function(_AuthorizationUnauthorizedState value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationState value)? initial,
    TResult Function(_AuthorizationAuthorizedState value)? authorized,
    TResult Function(_AuthorizationUnauthorizedState value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationUnauthorizedState implements AuthorizationState {
  const factory _AuthorizationUnauthorizedState() =
      _$AuthorizationUnauthorizedStateImpl;
}
