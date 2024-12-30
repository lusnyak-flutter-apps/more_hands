// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  int get catId => throw _privateConstructorUsedError;
  @JsonKey(name: 'catMcode')
  String? get catMCode => throw _privateConstructorUsedError;
  String? get catName => throw _privateConstructorUsedError;
  int get servId => throw _privateConstructorUsedError;
  @JsonKey(name: 'servMcode')
  String? get servMCode => throw _privateConstructorUsedError;
  String? get servName => throw _privateConstructorUsedError;
  String? get servImageUrl => throw _privateConstructorUsedError;
  List<LocationModel> get locations => throw _privateConstructorUsedError;
  List<FileModel> get files => throw _privateConstructorUsedError;
  bool get userHasService => throw _privateConstructorUsedError;

  /// Serializes this ServiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call(
      {int catId,
      @JsonKey(name: 'catMcode') String? catMCode,
      String? catName,
      int servId,
      @JsonKey(name: 'servMcode') String? servMCode,
      String? servName,
      String? servImageUrl,
      List<LocationModel> locations,
      List<FileModel> files,
      bool userHasService});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
    Object? catMCode = freezed,
    Object? catName = freezed,
    Object? servId = null,
    Object? servMCode = freezed,
    Object? servName = freezed,
    Object? servImageUrl = freezed,
    Object? locations = null,
    Object? files = null,
    Object? userHasService = null,
  }) {
    return _then(_value.copyWith(
      catId: null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int,
      catMCode: freezed == catMCode
          ? _value.catMCode
          : catMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      catName: freezed == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String?,
      servId: null == servId
          ? _value.servId
          : servId // ignore: cast_nullable_to_non_nullable
              as int,
      servMCode: freezed == servMCode
          ? _value.servMCode
          : servMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      servName: freezed == servName
          ? _value.servName
          : servName // ignore: cast_nullable_to_non_nullable
              as String?,
      servImageUrl: freezed == servImageUrl
          ? _value.servImageUrl
          : servImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>,
      userHasService: null == userHasService
          ? _value.userHasService
          : userHasService // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceModelImplCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$ServiceModelImplCopyWith(
          _$ServiceModelImpl value, $Res Function(_$ServiceModelImpl) then) =
      __$$ServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int catId,
      @JsonKey(name: 'catMcode') String? catMCode,
      String? catName,
      int servId,
      @JsonKey(name: 'servMcode') String? servMCode,
      String? servName,
      String? servImageUrl,
      List<LocationModel> locations,
      List<FileModel> files,
      bool userHasService});
}

/// @nodoc
class __$$ServiceModelImplCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$ServiceModelImpl>
    implements _$$ServiceModelImplCopyWith<$Res> {
  __$$ServiceModelImplCopyWithImpl(
      _$ServiceModelImpl _value, $Res Function(_$ServiceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
    Object? catMCode = freezed,
    Object? catName = freezed,
    Object? servId = null,
    Object? servMCode = freezed,
    Object? servName = freezed,
    Object? servImageUrl = freezed,
    Object? locations = null,
    Object? files = null,
    Object? userHasService = null,
  }) {
    return _then(_$ServiceModelImpl(
      catId: null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int,
      catMCode: freezed == catMCode
          ? _value.catMCode
          : catMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      catName: freezed == catName
          ? _value.catName
          : catName // ignore: cast_nullable_to_non_nullable
              as String?,
      servId: null == servId
          ? _value.servId
          : servId // ignore: cast_nullable_to_non_nullable
              as int,
      servMCode: freezed == servMCode
          ? _value.servMCode
          : servMCode // ignore: cast_nullable_to_non_nullable
              as String?,
      servName: freezed == servName
          ? _value.servName
          : servName // ignore: cast_nullable_to_non_nullable
              as String?,
      servImageUrl: freezed == servImageUrl
          ? _value.servImageUrl
          : servImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileModel>,
      userHasService: null == userHasService
          ? _value.userHasService
          : userHasService // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceModelImpl implements _ServiceModel {
  const _$ServiceModelImpl(
      {required this.catId,
      @JsonKey(name: 'catMcode') this.catMCode,
      this.catName,
      required this.servId,
      @JsonKey(name: 'servMcode') this.servMCode,
      this.servName,
      this.servImageUrl,
      final List<LocationModel> locations = const <LocationModel>[],
      final List<FileModel> files = const <FileModel>[],
      this.userHasService = false})
      : _locations = locations,
        _files = files;

  factory _$ServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceModelImplFromJson(json);

  @override
  final int catId;
  @override
  @JsonKey(name: 'catMcode')
  final String? catMCode;
  @override
  final String? catName;
  @override
  final int servId;
  @override
  @JsonKey(name: 'servMcode')
  final String? servMCode;
  @override
  final String? servName;
  @override
  final String? servImageUrl;
  final List<LocationModel> _locations;
  @override
  @JsonKey()
  List<LocationModel> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<FileModel> _files;
  @override
  @JsonKey()
  List<FileModel> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  @JsonKey()
  final bool userHasService;

  @override
  String toString() {
    return 'ServiceModel(catId: $catId, catMCode: $catMCode, catName: $catName, servId: $servId, servMCode: $servMCode, servName: $servName, servImageUrl: $servImageUrl, locations: $locations, files: $files, userHasService: $userHasService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceModelImpl &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.catMCode, catMCode) ||
                other.catMCode == catMCode) &&
            (identical(other.catName, catName) || other.catName == catName) &&
            (identical(other.servId, servId) || other.servId == servId) &&
            (identical(other.servMCode, servMCode) ||
                other.servMCode == servMCode) &&
            (identical(other.servName, servName) ||
                other.servName == servName) &&
            (identical(other.servImageUrl, servImageUrl) ||
                other.servImageUrl == servImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.userHasService, userHasService) ||
                other.userHasService == userHasService));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      catId,
      catMCode,
      catName,
      servId,
      servMCode,
      servName,
      servImageUrl,
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_files),
      userHasService);

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      __$$ServiceModelImplCopyWithImpl<_$ServiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {required final int catId,
      @JsonKey(name: 'catMcode') final String? catMCode,
      final String? catName,
      required final int servId,
      @JsonKey(name: 'servMcode') final String? servMCode,
      final String? servName,
      final String? servImageUrl,
      final List<LocationModel> locations,
      final List<FileModel> files,
      final bool userHasService}) = _$ServiceModelImpl;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$ServiceModelImpl.fromJson;

  @override
  int get catId;
  @override
  @JsonKey(name: 'catMcode')
  String? get catMCode;
  @override
  String? get catName;
  @override
  int get servId;
  @override
  @JsonKey(name: 'servMcode')
  String? get servMCode;
  @override
  String? get servName;
  @override
  String? get servImageUrl;
  @override
  List<LocationModel> get locations;
  @override
  List<FileModel> get files;
  @override
  bool get userHasService;

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
