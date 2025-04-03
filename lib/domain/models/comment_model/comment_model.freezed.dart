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
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "createDttm")
  DateTime? get createAt => throw _privateConstructorUsedError;
  String? get commentText => throw _privateConstructorUsedError;
  CommentUserDataModel? get userData => throw _privateConstructorUsedError;
  CommentUserDataModel? get relatedUserData =>
      throw _privateConstructorUsedError;
  String? get commentVisibility => throw _privateConstructorUsedError;
  int? get requestId => throw _privateConstructorUsedError;
  CommentModel? get relatedComment => throw _privateConstructorUsedError;
  CommentRelationType get relationType => throw _privateConstructorUsedError;

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
      {int? id,
      @JsonKey(name: "createDttm") DateTime? createAt,
      String? commentText,
      CommentUserDataModel? userData,
      CommentUserDataModel? relatedUserData,
      String? commentVisibility,
      int? requestId,
      CommentModel? relatedComment,
      CommentRelationType relationType});

  $CommentUserDataModelCopyWith<$Res>? get userData;
  $CommentUserDataModelCopyWith<$Res>? get relatedUserData;
  $CommentModelCopyWith<$Res>? get relatedComment;
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
    Object? id = freezed,
    Object? createAt = freezed,
    Object? commentText = freezed,
    Object? userData = freezed,
    Object? relatedUserData = freezed,
    Object? commentVisibility = freezed,
    Object? requestId = freezed,
    Object? relatedComment = freezed,
    Object? relationType = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      commentText: freezed == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as CommentUserDataModel?,
      relatedUserData: freezed == relatedUserData
          ? _value.relatedUserData
          : relatedUserData // ignore: cast_nullable_to_non_nullable
              as CommentUserDataModel?,
      commentVisibility: freezed == commentVisibility
          ? _value.commentVisibility
          : commentVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedComment: freezed == relatedComment
          ? _value.relatedComment
          : relatedComment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      relationType: null == relationType
          ? _value.relationType
          : relationType // ignore: cast_nullable_to_non_nullable
              as CommentRelationType,
    ) as $Val);
  }

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentUserDataModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $CommentUserDataModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentUserDataModelCopyWith<$Res>? get relatedUserData {
    if (_value.relatedUserData == null) {
      return null;
    }

    return $CommentUserDataModelCopyWith<$Res>(_value.relatedUserData!,
        (value) {
      return _then(_value.copyWith(relatedUserData: value) as $Val);
    });
  }

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res>? get relatedComment {
    if (_value.relatedComment == null) {
      return null;
    }

    return $CommentModelCopyWith<$Res>(_value.relatedComment!, (value) {
      return _then(_value.copyWith(relatedComment: value) as $Val);
    });
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
      {int? id,
      @JsonKey(name: "createDttm") DateTime? createAt,
      String? commentText,
      CommentUserDataModel? userData,
      CommentUserDataModel? relatedUserData,
      String? commentVisibility,
      int? requestId,
      CommentModel? relatedComment,
      CommentRelationType relationType});

  @override
  $CommentUserDataModelCopyWith<$Res>? get userData;
  @override
  $CommentUserDataModelCopyWith<$Res>? get relatedUserData;
  @override
  $CommentModelCopyWith<$Res>? get relatedComment;
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
    Object? id = freezed,
    Object? createAt = freezed,
    Object? commentText = freezed,
    Object? userData = freezed,
    Object? relatedUserData = freezed,
    Object? commentVisibility = freezed,
    Object? requestId = freezed,
    Object? relatedComment = freezed,
    Object? relationType = null,
  }) {
    return _then(_$CommentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      commentText: freezed == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as CommentUserDataModel?,
      relatedUserData: freezed == relatedUserData
          ? _value.relatedUserData
          : relatedUserData // ignore: cast_nullable_to_non_nullable
              as CommentUserDataModel?,
      commentVisibility: freezed == commentVisibility
          ? _value.commentVisibility
          : commentVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      relatedComment: freezed == relatedComment
          ? _value.relatedComment
          : relatedComment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      relationType: null == relationType
          ? _value.relationType
          : relationType // ignore: cast_nullable_to_non_nullable
              as CommentRelationType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl implements _CommentModel {
  const _$CommentModelImpl(
      {this.id,
      @JsonKey(name: "createDttm") this.createAt,
      this.commentText,
      this.userData,
      this.relatedUserData,
      this.commentVisibility,
      this.requestId,
      this.relatedComment,
      this.relationType = CommentRelationType.empty});

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "createDttm")
  final DateTime? createAt;
  @override
  final String? commentText;
  @override
  final CommentUserDataModel? userData;
  @override
  final CommentUserDataModel? relatedUserData;
  @override
  final String? commentVisibility;
  @override
  final int? requestId;
  @override
  final CommentModel? relatedComment;
  @override
  @JsonKey()
  final CommentRelationType relationType;

  @override
  String toString() {
    return 'CommentModel(id: $id, createAt: $createAt, commentText: $commentText, userData: $userData, relatedUserData: $relatedUserData, commentVisibility: $commentVisibility, requestId: $requestId, relatedComment: $relatedComment, relationType: $relationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.commentText, commentText) ||
                other.commentText == commentText) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.relatedUserData, relatedUserData) ||
                other.relatedUserData == relatedUserData) &&
            (identical(other.commentVisibility, commentVisibility) ||
                other.commentVisibility == commentVisibility) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.relatedComment, relatedComment) ||
                other.relatedComment == relatedComment) &&
            (identical(other.relationType, relationType) ||
                other.relationType == relationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createAt,
      commentText,
      userData,
      relatedUserData,
      commentVisibility,
      requestId,
      relatedComment,
      relationType);

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
      {final int? id,
      @JsonKey(name: "createDttm") final DateTime? createAt,
      final String? commentText,
      final CommentUserDataModel? userData,
      final CommentUserDataModel? relatedUserData,
      final String? commentVisibility,
      final int? requestId,
      final CommentModel? relatedComment,
      final CommentRelationType relationType}) = _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "createDttm")
  DateTime? get createAt;
  @override
  String? get commentText;
  @override
  CommentUserDataModel? get userData;
  @override
  CommentUserDataModel? get relatedUserData;
  @override
  String? get commentVisibility;
  @override
  int? get requestId;
  @override
  CommentModel? get relatedComment;
  @override
  CommentRelationType get relationType;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
