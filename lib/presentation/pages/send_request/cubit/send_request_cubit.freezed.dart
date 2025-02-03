// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendRequestState {
  bool get loading => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  bool get haveNoSubscription => throw _privateConstructorUsedError;
  int? get receiverId => throw _privateConstructorUsedError;
  ServiceModel? get service => throw _privateConstructorUsedError;

  /// Create a copy of SendRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendRequestStateCopyWith<SendRequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendRequestStateCopyWith<$Res> {
  factory $SendRequestStateCopyWith(
          SendRequestState value, $Res Function(SendRequestState) then) =
      _$SendRequestStateCopyWithImpl<$Res, SendRequestState>;
  @useResult
  $Res call(
      {bool loading,
      bool completed,
      bool haveNoSubscription,
      int? receiverId,
      ServiceModel? service});

  $ServiceModelCopyWith<$Res>? get service;
}

/// @nodoc
class _$SendRequestStateCopyWithImpl<$Res, $Val extends SendRequestState>
    implements $SendRequestStateCopyWith<$Res> {
  _$SendRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? completed = null,
    Object? haveNoSubscription = null,
    Object? receiverId = freezed,
    Object? service = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      haveNoSubscription: null == haveNoSubscription
          ? _value.haveNoSubscription
          : haveNoSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
    ) as $Val);
  }

  /// Create a copy of SendRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceModelCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendRequestStateImplCopyWith<$Res>
    implements $SendRequestStateCopyWith<$Res> {
  factory _$$SendRequestStateImplCopyWith(_$SendRequestStateImpl value,
          $Res Function(_$SendRequestStateImpl) then) =
      __$$SendRequestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool completed,
      bool haveNoSubscription,
      int? receiverId,
      ServiceModel? service});

  @override
  $ServiceModelCopyWith<$Res>? get service;
}

/// @nodoc
class __$$SendRequestStateImplCopyWithImpl<$Res>
    extends _$SendRequestStateCopyWithImpl<$Res, _$SendRequestStateImpl>
    implements _$$SendRequestStateImplCopyWith<$Res> {
  __$$SendRequestStateImplCopyWithImpl(_$SendRequestStateImpl _value,
      $Res Function(_$SendRequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendRequestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? completed = null,
    Object? haveNoSubscription = null,
    Object? receiverId = freezed,
    Object? service = freezed,
  }) {
    return _then(_$SendRequestStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      haveNoSubscription: null == haveNoSubscription
          ? _value.haveNoSubscription
          : haveNoSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
    ));
  }
}

/// @nodoc

class _$SendRequestStateImpl implements _SendRequestState {
  const _$SendRequestStateImpl(
      {this.loading = false,
      this.completed = false,
      this.haveNoSubscription = false,
      this.receiverId,
      this.service});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool completed;
  @override
  @JsonKey()
  final bool haveNoSubscription;
  @override
  final int? receiverId;
  @override
  final ServiceModel? service;

  @override
  String toString() {
    return 'SendRequestState(loading: $loading, completed: $completed, haveNoSubscription: $haveNoSubscription, receiverId: $receiverId, service: $service)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRequestStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.haveNoSubscription, haveNoSubscription) ||
                other.haveNoSubscription == haveNoSubscription) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, completed, haveNoSubscription, receiverId, service);

  /// Create a copy of SendRequestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRequestStateImplCopyWith<_$SendRequestStateImpl> get copyWith =>
      __$$SendRequestStateImplCopyWithImpl<_$SendRequestStateImpl>(
          this, _$identity);
}

abstract class _SendRequestState implements SendRequestState {
  const factory _SendRequestState(
      {final bool loading,
      final bool completed,
      final bool haveNoSubscription,
      final int? receiverId,
      final ServiceModel? service}) = _$SendRequestStateImpl;

  @override
  bool get loading;
  @override
  bool get completed;
  @override
  bool get haveNoSubscription;
  @override
  int? get receiverId;
  @override
  ServiceModel? get service;

  /// Create a copy of SendRequestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendRequestStateImplCopyWith<_$SendRequestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
