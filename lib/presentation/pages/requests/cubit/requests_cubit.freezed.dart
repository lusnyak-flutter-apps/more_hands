// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestsState {
  bool get loading => throw _privateConstructorUsedError;
  RequestStatus get selectedStatus => throw _privateConstructorUsedError;
  RequestType get selectedType => throw _privateConstructorUsedError;
  List<RequestModel> get requests => throw _privateConstructorUsedError;
  int get receiverUnseenCount => throw _privateConstructorUsedError;
  int get senderUnseenCount => throw _privateConstructorUsedError;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestsStateCopyWith<RequestsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsStateCopyWith<$Res> {
  factory $RequestsStateCopyWith(
          RequestsState value, $Res Function(RequestsState) then) =
      _$RequestsStateCopyWithImpl<$Res, RequestsState>;
  @useResult
  $Res call(
      {bool loading,
      RequestStatus selectedStatus,
      RequestType selectedType,
      List<RequestModel> requests,
      int receiverUnseenCount,
      int senderUnseenCount});
}

/// @nodoc
class _$RequestsStateCopyWithImpl<$Res, $Val extends RequestsState>
    implements $RequestsStateCopyWith<$Res> {
  _$RequestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? selectedStatus = null,
    Object? selectedType = null,
    Object? requests = null,
    Object? receiverUnseenCount = null,
    Object? senderUnseenCount = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedStatus: null == selectedStatus
          ? _value.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as RequestType,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<RequestModel>,
      receiverUnseenCount: null == receiverUnseenCount
          ? _value.receiverUnseenCount
          : receiverUnseenCount // ignore: cast_nullable_to_non_nullable
              as int,
      senderUnseenCount: null == senderUnseenCount
          ? _value.senderUnseenCount
          : senderUnseenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestsStateImplCopyWith<$Res>
    implements $RequestsStateCopyWith<$Res> {
  factory _$$RequestsStateImplCopyWith(
          _$RequestsStateImpl value, $Res Function(_$RequestsStateImpl) then) =
      __$$RequestsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      RequestStatus selectedStatus,
      RequestType selectedType,
      List<RequestModel> requests,
      int receiverUnseenCount,
      int senderUnseenCount});
}

/// @nodoc
class __$$RequestsStateImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsStateImpl>
    implements _$$RequestsStateImplCopyWith<$Res> {
  __$$RequestsStateImplCopyWithImpl(
      _$RequestsStateImpl _value, $Res Function(_$RequestsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? selectedStatus = null,
    Object? selectedType = null,
    Object? requests = null,
    Object? receiverUnseenCount = null,
    Object? senderUnseenCount = null,
  }) {
    return _then(_$RequestsStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedStatus: null == selectedStatus
          ? _value.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as RequestType,
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<RequestModel>,
      receiverUnseenCount: null == receiverUnseenCount
          ? _value.receiverUnseenCount
          : receiverUnseenCount // ignore: cast_nullable_to_non_nullable
              as int,
      senderUnseenCount: null == senderUnseenCount
          ? _value.senderUnseenCount
          : senderUnseenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RequestsStateImpl implements _RequestsState {
  const _$RequestsStateImpl(
      {this.loading = false,
      this.selectedStatus = RequestStatus.all,
      this.selectedType = RequestType.receiver,
      final List<RequestModel> requests = const [],
      this.receiverUnseenCount = 0,
      this.senderUnseenCount = 0})
      : _requests = requests;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final RequestStatus selectedStatus;
  @override
  @JsonKey()
  final RequestType selectedType;
  final List<RequestModel> _requests;
  @override
  @JsonKey()
  List<RequestModel> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  @JsonKey()
  final int receiverUnseenCount;
  @override
  @JsonKey()
  final int senderUnseenCount;

  @override
  String toString() {
    return 'RequestsState(loading: $loading, selectedStatus: $selectedStatus, selectedType: $selectedType, requests: $requests, receiverUnseenCount: $receiverUnseenCount, senderUnseenCount: $senderUnseenCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.selectedStatus, selectedStatus) ||
                other.selectedStatus == selectedStatus) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            const DeepCollectionEquality().equals(other._requests, _requests) &&
            (identical(other.receiverUnseenCount, receiverUnseenCount) ||
                other.receiverUnseenCount == receiverUnseenCount) &&
            (identical(other.senderUnseenCount, senderUnseenCount) ||
                other.senderUnseenCount == senderUnseenCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      selectedStatus,
      selectedType,
      const DeepCollectionEquality().hash(_requests),
      receiverUnseenCount,
      senderUnseenCount);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsStateImplCopyWith<_$RequestsStateImpl> get copyWith =>
      __$$RequestsStateImplCopyWithImpl<_$RequestsStateImpl>(this, _$identity);
}

abstract class _RequestsState implements RequestsState {
  const factory _RequestsState(
      {final bool loading,
      final RequestStatus selectedStatus,
      final RequestType selectedType,
      final List<RequestModel> requests,
      final int receiverUnseenCount,
      final int senderUnseenCount}) = _$RequestsStateImpl;

  @override
  bool get loading;
  @override
  RequestStatus get selectedStatus;
  @override
  RequestType get selectedType;
  @override
  List<RequestModel> get requests;
  @override
  int get receiverUnseenCount;
  @override
  int get senderUnseenCount;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestsStateImplCopyWith<_$RequestsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
