// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceListViewModel _$ServiceListViewModelFromJson(Map<String, dynamic> json) {
  return _ServiceListViewModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceListViewModel {
  ServiceModel get category => throw _privateConstructorUsedError;
  List<ServiceModel> get services => throw _privateConstructorUsedError;

  /// Serializes this ServiceListViewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceListViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceListViewModelCopyWith<ServiceListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListViewModelCopyWith<$Res> {
  factory $ServiceListViewModelCopyWith(ServiceListViewModel value,
          $Res Function(ServiceListViewModel) then) =
      _$ServiceListViewModelCopyWithImpl<$Res, ServiceListViewModel>;
  @useResult
  $Res call({ServiceModel category, List<ServiceModel> services});

  $ServiceModelCopyWith<$Res> get category;
}

/// @nodoc
class _$ServiceListViewModelCopyWithImpl<$Res,
        $Val extends ServiceListViewModel>
    implements $ServiceListViewModelCopyWith<$Res> {
  _$ServiceListViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceListViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ) as $Val);
  }

  /// Create a copy of ServiceListViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res> get category {
    return $ServiceModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceListViewModelImplCopyWith<$Res>
    implements $ServiceListViewModelCopyWith<$Res> {
  factory _$$ServiceListViewModelImplCopyWith(_$ServiceListViewModelImpl value,
          $Res Function(_$ServiceListViewModelImpl) then) =
      __$$ServiceListViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServiceModel category, List<ServiceModel> services});

  @override
  $ServiceModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$ServiceListViewModelImplCopyWithImpl<$Res>
    extends _$ServiceListViewModelCopyWithImpl<$Res, _$ServiceListViewModelImpl>
    implements _$$ServiceListViewModelImplCopyWith<$Res> {
  __$$ServiceListViewModelImplCopyWithImpl(_$ServiceListViewModelImpl _value,
      $Res Function(_$ServiceListViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceListViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? services = null,
  }) {
    return _then(_$ServiceListViewModelImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceListViewModelImpl implements _ServiceListViewModel {
  const _$ServiceListViewModelImpl(
      {required this.category,
      final List<ServiceModel> services = const <ServiceModel>[]})
      : _services = services;

  factory _$ServiceListViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceListViewModelImplFromJson(json);

  @override
  final ServiceModel category;
  final List<ServiceModel> _services;
  @override
  @JsonKey()
  List<ServiceModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceListViewModel(category: $category, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListViewModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, category, const DeepCollectionEquality().hash(_services));

  /// Create a copy of ServiceListViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListViewModelImplCopyWith<_$ServiceListViewModelImpl>
      get copyWith =>
          __$$ServiceListViewModelImplCopyWithImpl<_$ServiceListViewModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceListViewModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceListViewModel implements ServiceListViewModel {
  const factory _ServiceListViewModel(
      {required final ServiceModel category,
      final List<ServiceModel> services}) = _$ServiceListViewModelImpl;

  factory _ServiceListViewModel.fromJson(Map<String, dynamic> json) =
      _$ServiceListViewModelImpl.fromJson;

  @override
  ServiceModel get category;
  @override
  List<ServiceModel> get services;

  /// Create a copy of ServiceListViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceListViewModelImplCopyWith<_$ServiceListViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
