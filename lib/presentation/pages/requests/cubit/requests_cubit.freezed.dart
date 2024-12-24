// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestsState value) loading,
    required TResult Function(_RequestsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsState value)? loading,
    TResult? Function(_RequestsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsState value)? loading,
    TResult Function(_RequestsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsStateCopyWith<$Res> {
  factory $RequestsStateCopyWith(
          RequestsState value, $Res Function(RequestsState) then) =
      _$RequestsStateCopyWithImpl<$Res, RequestsState>;
}

/// @nodoc
class _$RequestsStateCopyWithImpl<$Res, $Val extends RequestsState>
    implements $RequestsStateCopyWith<$Res> {
  _$RequestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestsStateImplCopyWith<$Res> {
  factory _$$RequestsStateImplCopyWith(
          _$RequestsStateImpl value, $Res Function(_$RequestsStateImpl) then) =
      __$$RequestsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestsStateImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsStateImpl>
    implements _$$RequestsStateImplCopyWith<$Res> {
  __$$RequestsStateImplCopyWithImpl(
      _$RequestsStateImpl _value, $Res Function(_$RequestsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestsStateImpl implements _RequestsState {
  const _$RequestsStateImpl();

  @override
  String toString() {
    return 'RequestsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestsState value) loading,
    required TResult Function(_RequestsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsState value)? loading,
    TResult? Function(_RequestsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsState value)? loading,
    TResult Function(_RequestsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RequestsState implements RequestsState {
  const factory _RequestsState() = _$RequestsStateImpl;
}

/// @nodoc
abstract class _$$RequestsLoadedStateImplCopyWith<$Res> {
  factory _$$RequestsLoadedStateImplCopyWith(_$RequestsLoadedStateImpl value,
          $Res Function(_$RequestsLoadedStateImpl) then) =
      __$$RequestsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String selectedFilter, int selectedSection, List<dynamic> requests});
}

/// @nodoc
class __$$RequestsLoadedStateImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsLoadedStateImpl>
    implements _$$RequestsLoadedStateImplCopyWith<$Res> {
  __$$RequestsLoadedStateImplCopyWithImpl(_$RequestsLoadedStateImpl _value,
      $Res Function(_$RequestsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFilter = null,
    Object? selectedSection = null,
    Object? requests = null,
  }) {
    return _then(_$RequestsLoadedStateImpl(
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as int,
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$RequestsLoadedStateImpl implements _RequestsLoadedState {
  const _$RequestsLoadedStateImpl(
      {this.selectedFilter = "All",
      this.selectedSection = 0,
      final List<dynamic> requests = const []})
      : _requests = requests;

  @override
  @JsonKey()
  final String selectedFilter;
  @override
  @JsonKey()
  final int selectedSection;
  final List<dynamic> _requests;
  @override
  @JsonKey()
  List<dynamic> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  String toString() {
    return 'RequestsState.loaded(selectedFilter: $selectedFilter, selectedSection: $selectedSection, requests: $requests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsLoadedStateImpl &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.selectedSection, selectedSection) ||
                other.selectedSection == selectedSection) &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedFilter, selectedSection,
      const DeepCollectionEquality().hash(_requests));

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsLoadedStateImplCopyWith<_$RequestsLoadedStateImpl> get copyWith =>
      __$$RequestsLoadedStateImplCopyWithImpl<_$RequestsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)
        loaded,
  }) {
    return loaded(selectedFilter, selectedSection, requests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)?
        loaded,
  }) {
    return loaded?.call(selectedFilter, selectedSection, requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String selectedFilter, int selectedSection, List<dynamic> requests)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedFilter, selectedSection, requests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestsState value) loading,
    required TResult Function(_RequestsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsState value)? loading,
    TResult? Function(_RequestsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsState value)? loading,
    TResult Function(_RequestsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RequestsLoadedState implements RequestsState {
  const factory _RequestsLoadedState(
      {final String selectedFilter,
      final int selectedSection,
      final List<dynamic> requests}) = _$RequestsLoadedStateImpl;

  String get selectedFilter;
  int get selectedSection;
  List<dynamic> get requests;

  /// Create a copy of RequestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestsLoadedStateImplCopyWith<_$RequestsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
