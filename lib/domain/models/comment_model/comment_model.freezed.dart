// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  int get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get userRelatedId => throw _privateConstructorUsedError;
  int? get replyToCommentId => throw _privateConstructorUsedError;
  int? get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: "createDttm")
  DateTime? get createAt => throw _privateConstructorUsedError;
  num get userRating => throw _privateConstructorUsedError;
  num get userRelatedRating => throw _privateConstructorUsedError;
  int get replyToCommentsCount => throw _privateConstructorUsedError;
  String? get commentVisibility => throw _privateConstructorUsedError;
  String? get userFirstName => throw _privateConstructorUsedError;
  String? get commentText => throw _privateConstructorUsedError;
  String? get userLastName => throw _privateConstructorUsedError;
  String? get userMiddleName => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  bool get replyToCommentsLoaded => throw _privateConstructorUsedError;

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {int id,
      int? userId,
      int? userRelatedId,
      int? replyToCommentId,
      int? requestId,
      @JsonKey(name: "createDttm") DateTime? createAt,
      num userRating,
      num userRelatedRating,
      int replyToCommentsCount,
      String? commentVisibility,
      String? userFirstName,
      String? commentText,
      String? userLastName,
      String? userMiddleName,
      String? profileImageUrl,
      bool replyToCommentsLoaded});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? userRelatedId = freezed,
    Object? replyToCommentId = freezed,
    Object? requestId = freezed,
    Object? createAt = freezed,
    Object? userRating = null,
    Object? userRelatedRating = null,
    Object? replyToCommentsCount = null,
    Object? commentVisibility = freezed,
    Object? userFirstName = freezed,
    Object? commentText = freezed,
    Object? userLastName = freezed,
    Object? userMiddleName = freezed,
    Object? profileImageUrl = freezed,
    Object? replyToCommentsLoaded = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userRelatedId: freezed == userRelatedId
          ? _value.userRelatedId
          : userRelatedId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyToCommentId: freezed == replyToCommentId
          ? _value.replyToCommentId
          : replyToCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as num,
      userRelatedRating: null == userRelatedRating
          ? _value.userRelatedRating
          : userRelatedRating // ignore: cast_nullable_to_non_nullable
              as num,
      replyToCommentsCount: null == replyToCommentsCount
          ? _value.replyToCommentsCount
          : replyToCommentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentVisibility: freezed == commentVisibility
          ? _value.commentVisibility
          : commentVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirstName: freezed == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      commentText: freezed == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
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
      replyToCommentsLoaded: null == replyToCommentsLoaded
          ? _value.replyToCommentsLoaded
          : replyToCommentsLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? userId,
      int? userRelatedId,
      int? replyToCommentId,
      int? requestId,
      @JsonKey(name: "createDttm") DateTime? createAt,
      num userRating,
      num userRelatedRating,
      int replyToCommentsCount,
      String? commentVisibility,
      String? userFirstName,
      String? commentText,
      String? userLastName,
      String? userMiddleName,
      String? profileImageUrl,
      bool replyToCommentsLoaded});
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? userRelatedId = freezed,
    Object? replyToCommentId = freezed,
    Object? requestId = freezed,
    Object? createAt = freezed,
    Object? userRating = null,
    Object? userRelatedRating = null,
    Object? replyToCommentsCount = null,
    Object? commentVisibility = freezed,
    Object? userFirstName = freezed,
    Object? commentText = freezed,
    Object? userLastName = freezed,
    Object? userMiddleName = freezed,
    Object? profileImageUrl = freezed,
    Object? replyToCommentsLoaded = null,
  }) {
    return _then(_$CommentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userRelatedId: freezed == userRelatedId
          ? _value.userRelatedId
          : userRelatedId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyToCommentId: freezed == replyToCommentId
          ? _value.replyToCommentId
          : replyToCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as num,
      userRelatedRating: null == userRelatedRating
          ? _value.userRelatedRating
          : userRelatedRating // ignore: cast_nullable_to_non_nullable
              as num,
      replyToCommentsCount: null == replyToCommentsCount
          ? _value.replyToCommentsCount
          : replyToCommentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentVisibility: freezed == commentVisibility
          ? _value.commentVisibility
          : commentVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirstName: freezed == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      commentText: freezed == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
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
      replyToCommentsLoaded: null == replyToCommentsLoaded
          ? _value.replyToCommentsLoaded
          : replyToCommentsLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl implements _CommentModel {
  const _$CommentModelImpl(
      {required this.id,
      this.userId,
      this.userRelatedId,
      this.replyToCommentId,
      this.requestId,
      @JsonKey(name: "createDttm") this.createAt,
      this.userRating = 0,
      this.userRelatedRating = 0,
      this.replyToCommentsCount = 0,
      this.commentVisibility,
      this.userFirstName,
      this.commentText,
      this.userLastName,
      this.userMiddleName,
      this.profileImageUrl,
      this.replyToCommentsLoaded = true});

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  final int id;
  @override
  final int? userId;
  @override
  final int? userRelatedId;
  @override
  final int? replyToCommentId;
  @override
  final int? requestId;
  @override
  @JsonKey(name: "createDttm")
  final DateTime? createAt;
  @override
  @JsonKey()
  final num userRating;
  @override
  @JsonKey()
  final num userRelatedRating;
  @override
  @JsonKey()
  final int replyToCommentsCount;
  @override
  final String? commentVisibility;
  @override
  final String? userFirstName;
  @override
  final String? commentText;
  @override
  final String? userLastName;
  @override
  final String? userMiddleName;
  @override
  final String? profileImageUrl;
  @override
  @JsonKey()
  final bool replyToCommentsLoaded;

  @override
  String toString() {
    return 'CommentModel(id: $id, userId: $userId, userRelatedId: $userRelatedId, replyToCommentId: $replyToCommentId, requestId: $requestId, createAt: $createAt, userRating: $userRating, userRelatedRating: $userRelatedRating, replyToCommentsCount: $replyToCommentsCount, commentVisibility: $commentVisibility, userFirstName: $userFirstName, commentText: $commentText, userLastName: $userLastName, userMiddleName: $userMiddleName, profileImageUrl: $profileImageUrl, replyToCommentsLoaded: $replyToCommentsLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userRelatedId, userRelatedId) ||
                other.userRelatedId == userRelatedId) &&
            (identical(other.replyToCommentId, replyToCommentId) ||
                other.replyToCommentId == replyToCommentId) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.userRelatedRating, userRelatedRating) ||
                other.userRelatedRating == userRelatedRating) &&
            (identical(other.replyToCommentsCount, replyToCommentsCount) ||
                other.replyToCommentsCount == replyToCommentsCount) &&
            (identical(other.commentVisibility, commentVisibility) ||
                other.commentVisibility == commentVisibility) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.commentText, commentText) ||
                other.commentText == commentText) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            (identical(other.userMiddleName, userMiddleName) ||
                other.userMiddleName == userMiddleName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.replyToCommentsLoaded, replyToCommentsLoaded) ||
                other.replyToCommentsLoaded == replyToCommentsLoaded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userRelatedId,
      replyToCommentId,
      requestId,
      createAt,
      userRating,
      userRelatedRating,
      replyToCommentsCount,
      commentVisibility,
      userFirstName,
      commentText,
      userLastName,
      userMiddleName,
      profileImageUrl,
      replyToCommentsLoaded);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  const factory _CommentModel(
      {required final int id,
      final int? userId,
      final int? userRelatedId,
      final int? replyToCommentId,
      final int? requestId,
      @JsonKey(name: "createDttm") final DateTime? createAt,
      final num userRating,
      final num userRelatedRating,
      final int replyToCommentsCount,
      final String? commentVisibility,
      final String? userFirstName,
      final String? commentText,
      final String? userLastName,
      final String? userMiddleName,
      final String? profileImageUrl,
      final bool replyToCommentsLoaded}) = _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  int get id;
  @override
  int? get userId;
  @override
  int? get userRelatedId;
  @override
  int? get replyToCommentId;
  @override
  int? get requestId;
  @override
  @JsonKey(name: "createDttm")
  DateTime? get createAt;
  @override
  num get userRating;
  @override
  num get userRelatedRating;
  @override
  int get replyToCommentsCount;
  @override
  String? get commentVisibility;
  @override
  String? get userFirstName;
  @override
  String? get commentText;
  @override
  String? get userLastName;
  @override
  String? get userMiddleName;
  @override
  String? get profileImageUrl;
  @override
  bool get replyToCommentsLoaded;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
