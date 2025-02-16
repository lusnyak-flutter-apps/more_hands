// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceDetailsState {
  bool get loading => throw _privateConstructorUsedError;
  bool get serviceAdded => throw _privateConstructorUsedError;
  bool? get validated => throw _privateConstructorUsedError;
  ServiceModel? get service => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  CurrencyModel? get selectedCurrency => throw _privateConstructorUsedError;
  List<CurrencyModel> get currencies => throw _privateConstructorUsedError;
  List<ServiceMeasureModel> get serviceMeasures =>
      throw _privateConstructorUsedError;
  ServiceMeasureModel? get selectedMeasure =>
      throw _privateConstructorUsedError;
  List<File> get selectedFiles => throw _privateConstructorUsedError;
  List<LocationModel> get selectedLocations =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceDetailsStateCopyWith<ServiceDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailsStateCopyWith<$Res> {
  factory $ServiceDetailsStateCopyWith(
          ServiceDetailsState value, $Res Function(ServiceDetailsState) then) =
      _$ServiceDetailsStateCopyWithImpl<$Res, ServiceDetailsState>;
  @useResult
  $Res call(
      {bool loading,
      bool serviceAdded,
      bool? validated,
      ServiceModel? service,
      CategoryModel? category,
      CurrencyModel? selectedCurrency,
      List<CurrencyModel> currencies,
      List<ServiceMeasureModel> serviceMeasures,
      ServiceMeasureModel? selectedMeasure,
      List<File> selectedFiles,
      List<LocationModel> selectedLocations});

  $ServiceModelCopyWith<$Res>? get service;
  $CategoryModelCopyWith<$Res>? get category;
  $CurrencyModelCopyWith<$Res>? get selectedCurrency;
  $ServiceMeasureModelCopyWith<$Res>? get selectedMeasure;
}

/// @nodoc
class _$ServiceDetailsStateCopyWithImpl<$Res, $Val extends ServiceDetailsState>
    implements $ServiceDetailsStateCopyWith<$Res> {
  _$ServiceDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? serviceAdded = null,
    Object? validated = freezed,
    Object? service = freezed,
    Object? category = freezed,
    Object? selectedCurrency = freezed,
    Object? currencies = null,
    Object? serviceMeasures = null,
    Object? selectedMeasure = freezed,
    Object? selectedFiles = null,
    Object? selectedLocations = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceAdded: null == serviceAdded
          ? _value.serviceAdded
          : serviceAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      serviceMeasures: null == serviceMeasures
          ? _value.serviceMeasures
          : serviceMeasures // ignore: cast_nullable_to_non_nullable
              as List<ServiceMeasureModel>,
      selectedMeasure: freezed == selectedMeasure
          ? _value.selectedMeasure
          : selectedMeasure // ignore: cast_nullable_to_non_nullable
              as ServiceMeasureModel?,
      selectedFiles: null == selectedFiles
          ? _value.selectedFiles
          : selectedFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
      selectedLocations: null == selectedLocations
          ? _value.selectedLocations
          : selectedLocations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ) as $Val);
  }

  /// Create a copy of ServiceDetailsState
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

  /// Create a copy of ServiceDetailsState
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

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res>? get selectedCurrency {
    if (_value.selectedCurrency == null) {
      return null;
    }

    return $CurrencyModelCopyWith<$Res>(_value.selectedCurrency!, (value) {
      return _then(_value.copyWith(selectedCurrency: value) as $Val);
    });
  }

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceMeasureModelCopyWith<$Res>? get selectedMeasure {
    if (_value.selectedMeasure == null) {
      return null;
    }

    return $ServiceMeasureModelCopyWith<$Res>(_value.selectedMeasure!, (value) {
      return _then(_value.copyWith(selectedMeasure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceDetailsStateImplCopyWith<$Res>
    implements $ServiceDetailsStateCopyWith<$Res> {
  factory _$$ServiceDetailsStateImplCopyWith(_$ServiceDetailsStateImpl value,
          $Res Function(_$ServiceDetailsStateImpl) then) =
      __$$ServiceDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool serviceAdded,
      bool? validated,
      ServiceModel? service,
      CategoryModel? category,
      CurrencyModel? selectedCurrency,
      List<CurrencyModel> currencies,
      List<ServiceMeasureModel> serviceMeasures,
      ServiceMeasureModel? selectedMeasure,
      List<File> selectedFiles,
      List<LocationModel> selectedLocations});

  @override
  $ServiceModelCopyWith<$Res>? get service;
  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $CurrencyModelCopyWith<$Res>? get selectedCurrency;
  @override
  $ServiceMeasureModelCopyWith<$Res>? get selectedMeasure;
}

/// @nodoc
class __$$ServiceDetailsStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailsStateCopyWithImpl<$Res, _$ServiceDetailsStateImpl>
    implements _$$ServiceDetailsStateImplCopyWith<$Res> {
  __$$ServiceDetailsStateImplCopyWithImpl(_$ServiceDetailsStateImpl _value,
      $Res Function(_$ServiceDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? serviceAdded = null,
    Object? validated = freezed,
    Object? service = freezed,
    Object? category = freezed,
    Object? selectedCurrency = freezed,
    Object? currencies = null,
    Object? serviceMeasures = null,
    Object? selectedMeasure = freezed,
    Object? selectedFiles = null,
    Object? selectedLocations = null,
  }) {
    return _then(_$ServiceDetailsStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceAdded: null == serviceAdded
          ? _value.serviceAdded
          : serviceAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedCurrency: freezed == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      serviceMeasures: null == serviceMeasures
          ? _value._serviceMeasures
          : serviceMeasures // ignore: cast_nullable_to_non_nullable
              as List<ServiceMeasureModel>,
      selectedMeasure: freezed == selectedMeasure
          ? _value.selectedMeasure
          : selectedMeasure // ignore: cast_nullable_to_non_nullable
              as ServiceMeasureModel?,
      selectedFiles: null == selectedFiles
          ? _value._selectedFiles
          : selectedFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
      selectedLocations: null == selectedLocations
          ? _value._selectedLocations
          : selectedLocations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$ServiceDetailsStateImpl implements _ServiceDetailsState {
  const _$ServiceDetailsStateImpl(
      {this.loading = false,
      this.serviceAdded = false,
      this.validated,
      this.service,
      this.category,
      this.selectedCurrency,
      final List<CurrencyModel> currencies = const <CurrencyModel>[],
      final List<ServiceMeasureModel> serviceMeasures =
          const <ServiceMeasureModel>[],
      this.selectedMeasure,
      final List<File> selectedFiles = const <File>[],
      final List<LocationModel> selectedLocations = const <LocationModel>[]})
      : _currencies = currencies,
        _serviceMeasures = serviceMeasures,
        _selectedFiles = selectedFiles,
        _selectedLocations = selectedLocations;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool serviceAdded;
  @override
  final bool? validated;
  @override
  final ServiceModel? service;
  @override
  final CategoryModel? category;
  @override
  final CurrencyModel? selectedCurrency;
  final List<CurrencyModel> _currencies;
  @override
  @JsonKey()
  List<CurrencyModel> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  final List<ServiceMeasureModel> _serviceMeasures;
  @override
  @JsonKey()
  List<ServiceMeasureModel> get serviceMeasures {
    if (_serviceMeasures is EqualUnmodifiableListView) return _serviceMeasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceMeasures);
  }

  @override
  final ServiceMeasureModel? selectedMeasure;
  final List<File> _selectedFiles;
  @override
  @JsonKey()
  List<File> get selectedFiles {
    if (_selectedFiles is EqualUnmodifiableListView) return _selectedFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFiles);
  }

  final List<LocationModel> _selectedLocations;
  @override
  @JsonKey()
  List<LocationModel> get selectedLocations {
    if (_selectedLocations is EqualUnmodifiableListView)
      return _selectedLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedLocations);
  }

  @override
  String toString() {
    return 'ServiceDetailsState(loading: $loading, serviceAdded: $serviceAdded, validated: $validated, service: $service, category: $category, selectedCurrency: $selectedCurrency, currencies: $currencies, serviceMeasures: $serviceMeasures, selectedMeasure: $selectedMeasure, selectedFiles: $selectedFiles, selectedLocations: $selectedLocations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDetailsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.serviceAdded, serviceAdded) ||
                other.serviceAdded == serviceAdded) &&
            (identical(other.validated, validated) ||
                other.validated == validated) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            const DeepCollectionEquality()
                .equals(other._serviceMeasures, _serviceMeasures) &&
            (identical(other.selectedMeasure, selectedMeasure) ||
                other.selectedMeasure == selectedMeasure) &&
            const DeepCollectionEquality()
                .equals(other._selectedFiles, _selectedFiles) &&
            const DeepCollectionEquality()
                .equals(other._selectedLocations, _selectedLocations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      serviceAdded,
      validated,
      service,
      category,
      selectedCurrency,
      const DeepCollectionEquality().hash(_currencies),
      const DeepCollectionEquality().hash(_serviceMeasures),
      selectedMeasure,
      const DeepCollectionEquality().hash(_selectedFiles),
      const DeepCollectionEquality().hash(_selectedLocations));

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDetailsStateImplCopyWith<_$ServiceDetailsStateImpl> get copyWith =>
      __$$ServiceDetailsStateImplCopyWithImpl<_$ServiceDetailsStateImpl>(
          this, _$identity);
}

abstract class _ServiceDetailsState implements ServiceDetailsState {
  const factory _ServiceDetailsState(
      {final bool loading,
      final bool serviceAdded,
      final bool? validated,
      final ServiceModel? service,
      final CategoryModel? category,
      final CurrencyModel? selectedCurrency,
      final List<CurrencyModel> currencies,
      final List<ServiceMeasureModel> serviceMeasures,
      final ServiceMeasureModel? selectedMeasure,
      final List<File> selectedFiles,
      final List<LocationModel> selectedLocations}) = _$ServiceDetailsStateImpl;

  @override
  bool get loading;
  @override
  bool get serviceAdded;
  @override
  bool? get validated;
  @override
  ServiceModel? get service;
  @override
  CategoryModel? get category;
  @override
  CurrencyModel? get selectedCurrency;
  @override
  List<CurrencyModel> get currencies;
  @override
  List<ServiceMeasureModel> get serviceMeasures;
  @override
  ServiceMeasureModel? get selectedMeasure;
  @override
  List<File> get selectedFiles;
  @override
  List<LocationModel> get selectedLocations;

  /// Create a copy of ServiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceDetailsStateImplCopyWith<_$ServiceDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
