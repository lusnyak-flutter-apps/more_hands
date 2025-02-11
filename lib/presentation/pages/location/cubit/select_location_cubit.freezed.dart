// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectLocationState {
  bool get loading => throw _privateConstructorUsedError;
  bool get singleSelect => throw _privateConstructorUsedError;
  List<LocationModel> get locations => throw _privateConstructorUsedError;
  List<LocationModel> get selectedLocations =>
      throw _privateConstructorUsedError;
  LocationModel? get myLocation => throw _privateConstructorUsedError;

  /// Create a copy of SelectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectLocationStateCopyWith<SelectLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectLocationStateCopyWith<$Res> {
  factory $SelectLocationStateCopyWith(
          SelectLocationState value, $Res Function(SelectLocationState) then) =
      _$SelectLocationStateCopyWithImpl<$Res, SelectLocationState>;
  @useResult
  $Res call(
      {bool loading,
      bool singleSelect,
      List<LocationModel> locations,
      List<LocationModel> selectedLocations,
      LocationModel? myLocation});

  $LocationModelCopyWith<$Res>? get myLocation;
}

/// @nodoc
class _$SelectLocationStateCopyWithImpl<$Res, $Val extends SelectLocationState>
    implements $SelectLocationStateCopyWith<$Res> {
  _$SelectLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? singleSelect = null,
    Object? locations = null,
    Object? selectedLocations = null,
    Object? myLocation = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      singleSelect: null == singleSelect
          ? _value.singleSelect
          : singleSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      selectedLocations: null == selectedLocations
          ? _value.selectedLocations
          : selectedLocations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      myLocation: freezed == myLocation
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
  }

  /// Create a copy of SelectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get myLocation {
    if (_value.myLocation == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.myLocation!, (value) {
      return _then(_value.copyWith(myLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectLocationStateImplCopyWith<$Res>
    implements $SelectLocationStateCopyWith<$Res> {
  factory _$$SelectLocationStateImplCopyWith(_$SelectLocationStateImpl value,
          $Res Function(_$SelectLocationStateImpl) then) =
      __$$SelectLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool singleSelect,
      List<LocationModel> locations,
      List<LocationModel> selectedLocations,
      LocationModel? myLocation});

  @override
  $LocationModelCopyWith<$Res>? get myLocation;
}

/// @nodoc
class __$$SelectLocationStateImplCopyWithImpl<$Res>
    extends _$SelectLocationStateCopyWithImpl<$Res, _$SelectLocationStateImpl>
    implements _$$SelectLocationStateImplCopyWith<$Res> {
  __$$SelectLocationStateImplCopyWithImpl(_$SelectLocationStateImpl _value,
      $Res Function(_$SelectLocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? singleSelect = null,
    Object? locations = null,
    Object? selectedLocations = null,
    Object? myLocation = freezed,
  }) {
    return _then(_$SelectLocationStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      singleSelect: null == singleSelect
          ? _value.singleSelect
          : singleSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      selectedLocations: null == selectedLocations
          ? _value._selectedLocations
          : selectedLocations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
      myLocation: freezed == myLocation
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc

class _$SelectLocationStateImpl implements _SelectLocationState {
  const _$SelectLocationStateImpl(
      {this.loading = false,
      this.singleSelect = false,
      final List<LocationModel> locations = const [],
      final List<LocationModel> selectedLocations = const [],
      this.myLocation})
      : _locations = locations,
        _selectedLocations = selectedLocations;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool singleSelect;
  final List<LocationModel> _locations;
  @override
  @JsonKey()
  List<LocationModel> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
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
  final LocationModel? myLocation;

  @override
  String toString() {
    return 'SelectLocationState(loading: $loading, singleSelect: $singleSelect, locations: $locations, selectedLocations: $selectedLocations, myLocation: $myLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLocationStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.singleSelect, singleSelect) ||
                other.singleSelect == singleSelect) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._selectedLocations, _selectedLocations) &&
            (identical(other.myLocation, myLocation) ||
                other.myLocation == myLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      singleSelect,
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_selectedLocations),
      myLocation);

  /// Create a copy of SelectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLocationStateImplCopyWith<_$SelectLocationStateImpl> get copyWith =>
      __$$SelectLocationStateImplCopyWithImpl<_$SelectLocationStateImpl>(
          this, _$identity);
}

abstract class _SelectLocationState implements SelectLocationState {
  const factory _SelectLocationState(
      {final bool loading,
      final bool singleSelect,
      final List<LocationModel> locations,
      final List<LocationModel> selectedLocations,
      final LocationModel? myLocation}) = _$SelectLocationStateImpl;

  @override
  bool get loading;
  @override
  bool get singleSelect;
  @override
  List<LocationModel> get locations;
  @override
  List<LocationModel> get selectedLocations;
  @override
  LocationModel? get myLocation;

  /// Create a copy of SelectLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectLocationStateImplCopyWith<_$SelectLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
