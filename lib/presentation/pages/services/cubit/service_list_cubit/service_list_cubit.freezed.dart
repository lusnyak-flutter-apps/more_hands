// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceListState {
  bool get loading => throw _privateConstructorUsedError;
  ServiceModel? get selected => throw _privateConstructorUsedError;
  List<ServiceListViewModel> get services => throw _privateConstructorUsedError;
  List<int> get expanded => throw _privateConstructorUsedError;

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceListStateCopyWith<ServiceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListStateCopyWith<$Res> {
  factory $ServiceListStateCopyWith(
          ServiceListState value, $Res Function(ServiceListState) then) =
      _$ServiceListStateCopyWithImpl<$Res, ServiceListState>;
  @useResult
  $Res call(
      {bool loading,
      ServiceModel? selected,
      List<ServiceListViewModel> services,
      List<int> expanded});

  $ServiceModelCopyWith<$Res>? get selected;
}

/// @nodoc
class _$ServiceListStateCopyWithImpl<$Res, $Val extends ServiceListState>
    implements $ServiceListStateCopyWith<$Res> {
  _$ServiceListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? selected = freezed,
    Object? services = null,
    Object? expanded = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceListViewModel>,
      expanded: null == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $ServiceModelCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceListStateImplCopyWith<$Res>
    implements $ServiceListStateCopyWith<$Res> {
  factory _$$ServiceListStateImplCopyWith(_$ServiceListStateImpl value,
          $Res Function(_$ServiceListStateImpl) then) =
      __$$ServiceListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      ServiceModel? selected,
      List<ServiceListViewModel> services,
      List<int> expanded});

  @override
  $ServiceModelCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$ServiceListStateImplCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res, _$ServiceListStateImpl>
    implements _$$ServiceListStateImplCopyWith<$Res> {
  __$$ServiceListStateImplCopyWithImpl(_$ServiceListStateImpl _value,
      $Res Function(_$ServiceListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? selected = freezed,
    Object? services = null,
    Object? expanded = null,
  }) {
    return _then(_$ServiceListStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceListViewModel>,
      expanded: null == expanded
          ? _value._expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ServiceListStateImpl implements _ServiceListState {
  const _$ServiceListStateImpl(
      {this.loading = false,
      this.selected,
      final List<ServiceListViewModel> services =
          const <ServiceListViewModel>[],
      final List<int> expanded = const <int>[]})
      : _services = services,
        _expanded = expanded;

  @override
  @JsonKey()
  final bool loading;
  @override
  final ServiceModel? selected;
  final List<ServiceListViewModel> _services;
  @override
  @JsonKey()
  List<ServiceListViewModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<int> _expanded;
  @override
  @JsonKey()
  List<int> get expanded {
    if (_expanded is EqualUnmodifiableListView) return _expanded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expanded);
  }

  @override
  String toString() {
    return 'ServiceListState(loading: $loading, selected: $selected, services: $services, expanded: $expanded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._expanded, _expanded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      selected,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_expanded));

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListStateImplCopyWith<_$ServiceListStateImpl> get copyWith =>
      __$$ServiceListStateImplCopyWithImpl<_$ServiceListStateImpl>(
          this, _$identity);
}

abstract class _ServiceListState implements ServiceListState {
  const factory _ServiceListState(
      {final bool loading,
      final ServiceModel? selected,
      final List<ServiceListViewModel> services,
      final List<int> expanded}) = _$ServiceListStateImpl;

  @override
  bool get loading;
  @override
  ServiceModel? get selected;
  @override
  List<ServiceListViewModel> get services;
  @override
  List<int> get expanded;

  /// Create a copy of ServiceListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceListStateImplCopyWith<_$ServiceListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
