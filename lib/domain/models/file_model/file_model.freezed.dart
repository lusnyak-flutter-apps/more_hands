// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  int? get udfId => throw _privateConstructorUsedError;
  int? get usfFileId => throw _privateConstructorUsedError;
  AttachCategory? get attachCategory => throw _privateConstructorUsedError;

  /// Serializes this FileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call({int? udfId, int? usfFileId, AttachCategory? attachCategory});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udfId = freezed,
    Object? usfFileId = freezed,
    Object? attachCategory = freezed,
  }) {
    return _then(_value.copyWith(
      udfId: freezed == udfId
          ? _value.udfId
          : udfId // ignore: cast_nullable_to_non_nullable
              as int?,
      usfFileId: freezed == usfFileId
          ? _value.usfFileId
          : usfFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      attachCategory: freezed == attachCategory
          ? _value.attachCategory
          : attachCategory // ignore: cast_nullable_to_non_nullable
              as AttachCategory?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileModelImplCopyWith<$Res>
    implements $FileModelCopyWith<$Res> {
  factory _$$FileModelImplCopyWith(
          _$FileModelImpl value, $Res Function(_$FileModelImpl) then) =
      __$$FileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? udfId, int? usfFileId, AttachCategory? attachCategory});
}

/// @nodoc
class __$$FileModelImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileModelImpl>
    implements _$$FileModelImplCopyWith<$Res> {
  __$$FileModelImplCopyWithImpl(
      _$FileModelImpl _value, $Res Function(_$FileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udfId = freezed,
    Object? usfFileId = freezed,
    Object? attachCategory = freezed,
  }) {
    return _then(_$FileModelImpl(
      udfId: freezed == udfId
          ? _value.udfId
          : udfId // ignore: cast_nullable_to_non_nullable
              as int?,
      usfFileId: freezed == usfFileId
          ? _value.usfFileId
          : usfFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      attachCategory: freezed == attachCategory
          ? _value.attachCategory
          : attachCategory // ignore: cast_nullable_to_non_nullable
              as AttachCategory?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$FileModelImpl implements _FileModel {
  const _$FileModelImpl({this.udfId, this.usfFileId, this.attachCategory});

  factory _$FileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileModelImplFromJson(json);

  @override
  final int? udfId;
  @override
  final int? usfFileId;
  @override
  final AttachCategory? attachCategory;

  @override
  String toString() {
    return 'FileModel(udfId: $udfId, usfFileId: $usfFileId, attachCategory: $attachCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileModelImpl &&
            (identical(other.udfId, udfId) || other.udfId == udfId) &&
            (identical(other.usfFileId, usfFileId) ||
                other.usfFileId == usfFileId) &&
            (identical(other.attachCategory, attachCategory) ||
                other.attachCategory == attachCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, udfId, usfFileId, attachCategory);

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      __$$FileModelImplCopyWithImpl<_$FileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileModelImplToJson(
      this,
    );
  }
}

abstract class _FileModel implements FileModel {
  const factory _FileModel(
      {final int? udfId,
      final int? usfFileId,
      final AttachCategory? attachCategory}) = _$FileModelImpl;

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$FileModelImpl.fromJson;

  @override
  int? get udfId;
  @override
  int? get usfFileId;
  @override
  AttachCategory? get attachCategory;

  /// Create a copy of FileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
