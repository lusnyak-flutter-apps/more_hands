// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingViewModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get backgroundImage => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingViewModelCopyWith<OnboardingViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingViewModelCopyWith<$Res> {
  factory $OnboardingViewModelCopyWith(
          OnboardingViewModel value, $Res Function(OnboardingViewModel) then) =
      _$OnboardingViewModelCopyWithImpl<$Res, OnboardingViewModel>;
  @useResult
  $Res call({int id, String title, String description, String backgroundImage});
}

/// @nodoc
class _$OnboardingViewModelCopyWithImpl<$Res, $Val extends OnboardingViewModel>
    implements $OnboardingViewModelCopyWith<$Res> {
  _$OnboardingViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? backgroundImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingViewModelImplCopyWith<$Res>
    implements $OnboardingViewModelCopyWith<$Res> {
  factory _$$OnboardingViewModelImplCopyWith(_$OnboardingViewModelImpl value,
          $Res Function(_$OnboardingViewModelImpl) then) =
      __$$OnboardingViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, String backgroundImage});
}

/// @nodoc
class __$$OnboardingViewModelImplCopyWithImpl<$Res>
    extends _$OnboardingViewModelCopyWithImpl<$Res, _$OnboardingViewModelImpl>
    implements _$$OnboardingViewModelImplCopyWith<$Res> {
  __$$OnboardingViewModelImplCopyWithImpl(_$OnboardingViewModelImpl _value,
      $Res Function(_$OnboardingViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? backgroundImage = null,
  }) {
    return _then(_$OnboardingViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnboardingViewModelImpl implements _OnboardingViewModel {
  const _$OnboardingViewModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.backgroundImage});

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String backgroundImage;

  @override
  String toString() {
    return 'OnboardingViewModel(id: $id, title: $title, description: $description, backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, backgroundImage);

  /// Create a copy of OnboardingViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingViewModelImplCopyWith<_$OnboardingViewModelImpl> get copyWith =>
      __$$OnboardingViewModelImplCopyWithImpl<_$OnboardingViewModelImpl>(
          this, _$identity);
}

abstract class _OnboardingViewModel implements OnboardingViewModel {
  const factory _OnboardingViewModel(
      {required final int id,
      required final String title,
      required final String description,
      required final String backgroundImage}) = _$OnboardingViewModelImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get backgroundImage;

  /// Create a copy of OnboardingViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingViewModelImplCopyWith<_$OnboardingViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
