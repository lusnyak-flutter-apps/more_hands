// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddReviewState {
  bool get loading => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int? get replyToCommentId => throw _privateConstructorUsedError;
  int? get requestId => throw _privateConstructorUsedError;
  String? get userRelatedLogin => throw _privateConstructorUsedError;

  /// Create a copy of AddReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddReviewStateCopyWith<AddReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewStateCopyWith<$Res> {
  factory $AddReviewStateCopyWith(
          AddReviewState value, $Res Function(AddReviewState) then) =
      _$AddReviewStateCopyWithImpl<$Res, AddReviewState>;
  @useResult
  $Res call(
      {bool loading,
      bool completed,
      double rating,
      int? replyToCommentId,
      int? requestId,
      String? userRelatedLogin});
}

/// @nodoc
class _$AddReviewStateCopyWithImpl<$Res, $Val extends AddReviewState>
    implements $AddReviewStateCopyWith<$Res> {
  _$AddReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? completed = null,
    Object? rating = null,
    Object? replyToCommentId = freezed,
    Object? requestId = freezed,
    Object? userRelatedLogin = freezed,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      replyToCommentId: freezed == replyToCommentId
          ? _value.replyToCommentId
          : replyToCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      userRelatedLogin: freezed == userRelatedLogin
          ? _value.userRelatedLogin
          : userRelatedLogin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddReviewStateImplCopyWith<$Res>
    implements $AddReviewStateCopyWith<$Res> {
  factory _$$AddReviewStateImplCopyWith(_$AddReviewStateImpl value,
          $Res Function(_$AddReviewStateImpl) then) =
      __$$AddReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool completed,
      double rating,
      int? replyToCommentId,
      int? requestId,
      String? userRelatedLogin});
}

/// @nodoc
class __$$AddReviewStateImplCopyWithImpl<$Res>
    extends _$AddReviewStateCopyWithImpl<$Res, _$AddReviewStateImpl>
    implements _$$AddReviewStateImplCopyWith<$Res> {
  __$$AddReviewStateImplCopyWithImpl(
      _$AddReviewStateImpl _value, $Res Function(_$AddReviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? completed = null,
    Object? rating = null,
    Object? replyToCommentId = freezed,
    Object? requestId = freezed,
    Object? userRelatedLogin = freezed,
  }) {
    return _then(_$AddReviewStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      replyToCommentId: freezed == replyToCommentId
          ? _value.replyToCommentId
          : replyToCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      userRelatedLogin: freezed == userRelatedLogin
          ? _value.userRelatedLogin
          : userRelatedLogin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddReviewStateImpl implements _AddReviewState {
  const _$AddReviewStateImpl(
      {this.loading = false,
      this.completed = false,
      this.rating = 0.0,
      this.replyToCommentId,
      this.requestId,
      this.userRelatedLogin});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool completed;
  @override
  @JsonKey()
  final double rating;
  @override
  final int? replyToCommentId;
  @override
  final int? requestId;
  @override
  final String? userRelatedLogin;

  @override
  String toString() {
    return 'AddReviewState(loading: $loading, completed: $completed, rating: $rating, replyToCommentId: $replyToCommentId, requestId: $requestId, userRelatedLogin: $userRelatedLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReviewStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.replyToCommentId, replyToCommentId) ||
                other.replyToCommentId == replyToCommentId) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.userRelatedLogin, userRelatedLogin) ||
                other.userRelatedLogin == userRelatedLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, completed, rating,
      replyToCommentId, requestId, userRelatedLogin);

  /// Create a copy of AddReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewStateImplCopyWith<_$AddReviewStateImpl> get copyWith =>
      __$$AddReviewStateImplCopyWithImpl<_$AddReviewStateImpl>(
          this, _$identity);
}

abstract class _AddReviewState implements AddReviewState {
  const factory _AddReviewState(
      {final bool loading,
      final bool completed,
      final double rating,
      final int? replyToCommentId,
      final int? requestId,
      final String? userRelatedLogin}) = _$AddReviewStateImpl;

  @override
  bool get loading;
  @override
  bool get completed;
  @override
  double get rating;
  @override
  int? get replyToCommentId;
  @override
  int? get requestId;
  @override
  String? get userRelatedLogin;

  /// Create a copy of AddReviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReviewStateImplCopyWith<_$AddReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
