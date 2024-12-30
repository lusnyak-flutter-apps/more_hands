// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referrals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferralsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String referralCode, List<UserModel> referrals)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String referralCode, List<UserModel> referrals)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String referralCode, List<UserModel> referrals)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReferralsState value) loading,
    required TResult Function(_ReferralsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReferralsState value)? loading,
    TResult? Function(_ReferralsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReferralsState value)? loading,
    TResult Function(_ReferralsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralsStateCopyWith<$Res> {
  factory $ReferralsStateCopyWith(
          ReferralsState value, $Res Function(ReferralsState) then) =
      _$ReferralsStateCopyWithImpl<$Res, ReferralsState>;
}

/// @nodoc
class _$ReferralsStateCopyWithImpl<$Res, $Val extends ReferralsState>
    implements $ReferralsStateCopyWith<$Res> {
  _$ReferralsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReferralsStateImplCopyWith<$Res> {
  factory _$$ReferralsStateImplCopyWith(_$ReferralsStateImpl value,
          $Res Function(_$ReferralsStateImpl) then) =
      __$$ReferralsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReferralsStateImplCopyWithImpl<$Res>
    extends _$ReferralsStateCopyWithImpl<$Res, _$ReferralsStateImpl>
    implements _$$ReferralsStateImplCopyWith<$Res> {
  __$$ReferralsStateImplCopyWithImpl(
      _$ReferralsStateImpl _value, $Res Function(_$ReferralsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReferralsStateImpl implements _ReferralsState {
  const _$ReferralsStateImpl();

  @override
  String toString() {
    return 'ReferralsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReferralsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String referralCode, List<UserModel> referrals)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String referralCode, List<UserModel> referrals)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String referralCode, List<UserModel> referrals)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReferralsState value) loading,
    required TResult Function(_ReferralsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReferralsState value)? loading,
    TResult? Function(_ReferralsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReferralsState value)? loading,
    TResult Function(_ReferralsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReferralsState implements ReferralsState {
  const factory _ReferralsState() = _$ReferralsStateImpl;
}

/// @nodoc
abstract class _$$ReferralsLoadedStateImplCopyWith<$Res> {
  factory _$$ReferralsLoadedStateImplCopyWith(_$ReferralsLoadedStateImpl value,
          $Res Function(_$ReferralsLoadedStateImpl) then) =
      __$$ReferralsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String referralCode, List<UserModel> referrals});
}

/// @nodoc
class __$$ReferralsLoadedStateImplCopyWithImpl<$Res>
    extends _$ReferralsStateCopyWithImpl<$Res, _$ReferralsLoadedStateImpl>
    implements _$$ReferralsLoadedStateImplCopyWith<$Res> {
  __$$ReferralsLoadedStateImplCopyWithImpl(_$ReferralsLoadedStateImpl _value,
      $Res Function(_$ReferralsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = null,
    Object? referrals = null,
  }) {
    return _then(_$ReferralsLoadedStateImpl(
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      referrals: null == referrals
          ? _value._referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$ReferralsLoadedStateImpl implements _ReferralsLoadedState {
  const _$ReferralsLoadedStateImpl(
      {this.referralCode = "0",
      final List<UserModel> referrals = const <UserModel>[]})
      : _referrals = referrals;

  @override
  @JsonKey()
  final String referralCode;
  final List<UserModel> _referrals;
  @override
  @JsonKey()
  List<UserModel> get referrals {
    if (_referrals is EqualUnmodifiableListView) return _referrals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referrals);
  }

  @override
  String toString() {
    return 'ReferralsState.loaded(referralCode: $referralCode, referrals: $referrals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralsLoadedStateImpl &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality()
                .equals(other._referrals, _referrals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referralCode,
      const DeepCollectionEquality().hash(_referrals));

  /// Create a copy of ReferralsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralsLoadedStateImplCopyWith<_$ReferralsLoadedStateImpl>
      get copyWith =>
          __$$ReferralsLoadedStateImplCopyWithImpl<_$ReferralsLoadedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String referralCode, List<UserModel> referrals)
        loaded,
  }) {
    return loaded(referralCode, referrals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String referralCode, List<UserModel> referrals)? loaded,
  }) {
    return loaded?.call(referralCode, referrals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String referralCode, List<UserModel> referrals)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(referralCode, referrals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReferralsState value) loading,
    required TResult Function(_ReferralsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReferralsState value)? loading,
    TResult? Function(_ReferralsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReferralsState value)? loading,
    TResult Function(_ReferralsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ReferralsLoadedState implements ReferralsState {
  const factory _ReferralsLoadedState(
      {final String referralCode,
      final List<UserModel> referrals}) = _$ReferralsLoadedStateImpl;

  String get referralCode;
  List<UserModel> get referrals;

  /// Create a copy of ReferralsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralsLoadedStateImplCopyWith<_$ReferralsLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
