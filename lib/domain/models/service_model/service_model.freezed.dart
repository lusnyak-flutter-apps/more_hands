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
  @JsonKey(name: 'servInfo')
  ServiceInfoModel? get serviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'catInfo')
  CategoryModel? get category => throw _privateConstructorUsedError;
  List<LocationShortModel> get locations => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'servInfo') ServiceInfoModel? serviceInfo,
      @JsonKey(name: 'catInfo') CategoryModel? category,
      List<LocationShortModel> locations,
      List<FileModel> files,
      bool userHasService});

  $ServiceInfoModelCopyWith<$Res>? get serviceInfo;
  $CategoryModelCopyWith<$Res>? get category;
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
    Object? serviceInfo = freezed,
    Object? category = freezed,
    Object? locations = null,
    Object? files = null,
    Object? userHasService = null,
  }) {
    return _then(_value.copyWith(
      serviceInfo: freezed == serviceInfo
          ? _value.serviceInfo
          : serviceInfo // ignore: cast_nullable_to_non_nullable
              as ServiceInfoModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationShortModel>,
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

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceInfoModelCopyWith<$Res>? get serviceInfo {
    if (_value.serviceInfo == null) {
      return null;
    }

    return $ServiceInfoModelCopyWith<$Res>(_value.serviceInfo!, (value) {
      return _then(_value.copyWith(serviceInfo: value) as $Val);
    });
  }

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
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
      {@JsonKey(name: 'servInfo') ServiceInfoModel? serviceInfo,
      @JsonKey(name: 'catInfo') CategoryModel? category,
      List<LocationShortModel> locations,
      List<FileModel> files,
      bool userHasService});

  @override
  $ServiceInfoModelCopyWith<$Res>? get serviceInfo;
  @override
  $CategoryModelCopyWith<$Res>? get category;
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
    Object? serviceInfo = freezed,
    Object? category = freezed,
    Object? locations = null,
    Object? files = null,
    Object? userHasService = null,
  }) {
    return _then(_$ServiceModelImpl(
      serviceInfo: freezed == serviceInfo
          ? _value.serviceInfo
          : serviceInfo // ignore: cast_nullable_to_non_nullable
              as ServiceInfoModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationShortModel>,
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
      {@JsonKey(name: 'servInfo') this.serviceInfo,
      @JsonKey(name: 'catInfo') this.category,
      final List<LocationShortModel> locations = const <LocationShortModel>[],
      final List<FileModel> files = const <FileModel>[],
      this.userHasService = false})
      : _locations = locations,
        _files = files;

  factory _$ServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceModelImplFromJson(json);

  @override
  @JsonKey(name: 'servInfo')
  final ServiceInfoModel? serviceInfo;
  @override
  @JsonKey(name: 'catInfo')
  final CategoryModel? category;
  final List<LocationShortModel> _locations;
  @override
  @JsonKey()
  List<LocationShortModel> get locations {
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
    return 'ServiceModel(serviceInfo: $serviceInfo, category: $category, locations: $locations, files: $files, userHasService: $userHasService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceModelImpl &&
            (identical(other.serviceInfo, serviceInfo) ||
                other.serviceInfo == serviceInfo) &&
            (identical(other.category, category) ||
                other.category == category) &&
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
      serviceInfo,
      category,
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
      {@JsonKey(name: 'servInfo') final ServiceInfoModel? serviceInfo,
      @JsonKey(name: 'catInfo') final CategoryModel? category,
      final List<LocationShortModel> locations,
      final List<FileModel> files,
      final bool userHasService}) = _$ServiceModelImpl;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$ServiceModelImpl.fromJson;

  @override
  @JsonKey(name: 'servInfo')
  ServiceInfoModel? get serviceInfo;
  @override
  @JsonKey(name: 'catInfo')
  CategoryModel? get category;
  @override
  List<LocationShortModel> get locations;
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
