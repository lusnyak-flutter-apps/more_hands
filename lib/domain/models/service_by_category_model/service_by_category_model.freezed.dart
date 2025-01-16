// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_by_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceByCategoryModel _$ServiceByCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _ServiceByCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceByCategoryModel {
  @JsonKey(name: 'catInfo')
  CategoryModel? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'userServicesInfo')
  List<ServiceModel> get services => throw _privateConstructorUsedError;

  /// Serializes this ServiceByCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceByCategoryModelCopyWith<ServiceByCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceByCategoryModelCopyWith<$Res> {
  factory $ServiceByCategoryModelCopyWith(ServiceByCategoryModel value,
          $Res Function(ServiceByCategoryModel) then) =
      _$ServiceByCategoryModelCopyWithImpl<$Res, ServiceByCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'catInfo') CategoryModel? category,
      @JsonKey(name: 'userServicesInfo') List<ServiceModel> services});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ServiceByCategoryModelCopyWithImpl<$Res,
        $Val extends ServiceByCategoryModel>
    implements $ServiceByCategoryModelCopyWith<$Res> {
  _$ServiceByCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ) as $Val);
  }

  /// Create a copy of ServiceByCategoryModel
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
abstract class _$$ServiceByCategoryModelImplCopyWith<$Res>
    implements $ServiceByCategoryModelCopyWith<$Res> {
  factory _$$ServiceByCategoryModelImplCopyWith(
          _$ServiceByCategoryModelImpl value,
          $Res Function(_$ServiceByCategoryModelImpl) then) =
      __$$ServiceByCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'catInfo') CategoryModel? category,
      @JsonKey(name: 'userServicesInfo') List<ServiceModel> services});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ServiceByCategoryModelImplCopyWithImpl<$Res>
    extends _$ServiceByCategoryModelCopyWithImpl<$Res,
        _$ServiceByCategoryModelImpl>
    implements _$$ServiceByCategoryModelImplCopyWith<$Res> {
  __$$ServiceByCategoryModelImplCopyWithImpl(
      _$ServiceByCategoryModelImpl _value,
      $Res Function(_$ServiceByCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? services = null,
  }) {
    return _then(_$ServiceByCategoryModelImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceByCategoryModelImpl implements _ServiceByCategoryModel {
  const _$ServiceByCategoryModelImpl(
      {@JsonKey(name: 'catInfo') this.category,
      @JsonKey(name: 'userServicesInfo')
      final List<ServiceModel> services = const <ServiceModel>[]})
      : _services = services;

  factory _$ServiceByCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceByCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'catInfo')
  final CategoryModel? category;
  final List<ServiceModel> _services;
  @override
  @JsonKey(name: 'userServicesInfo')
  List<ServiceModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceByCategoryModel(category: $category, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceByCategoryModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_services));

  /// Create a copy of ServiceByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceByCategoryModelImplCopyWith<_$ServiceByCategoryModelImpl>
      get copyWith => __$$ServiceByCategoryModelImplCopyWithImpl<
          _$ServiceByCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceByCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceByCategoryModel implements ServiceByCategoryModel {
  const factory _ServiceByCategoryModel(
      {@JsonKey(name: 'catInfo') final CategoryModel? category,
      @JsonKey(name: 'userServicesInfo')
      final List<ServiceModel> services}) = _$ServiceByCategoryModelImpl;

  factory _ServiceByCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ServiceByCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'catInfo')
  CategoryModel? get category;
  @override
  @JsonKey(name: 'userServicesInfo')
  List<ServiceModel> get services;

  /// Create a copy of ServiceByCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceByCategoryModelImplCopyWith<_$ServiceByCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
