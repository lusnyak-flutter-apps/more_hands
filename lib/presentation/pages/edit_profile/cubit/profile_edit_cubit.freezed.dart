// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEditState {
  UserModel? get user => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get editedComplete => throw _privateConstructorUsedError;
  File? get pickedFile => throw _privateConstructorUsedError;
  ContactType get primaryContact => throw _privateConstructorUsedError;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileEditStateCopyWith<ProfileEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(
          ProfileEditState value, $Res Function(ProfileEditState) then) =
      _$ProfileEditStateCopyWithImpl<$Res, ProfileEditState>;
  @useResult
  $Res call(
      {UserModel? user,
      bool loading,
      bool editedComplete,
      File? pickedFile,
      ContactType primaryContact});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res, $Val extends ProfileEditState>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loading = null,
    Object? editedComplete = null,
    Object? pickedFile = freezed,
    Object? primaryContact = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      editedComplete: null == editedComplete
          ? _value.editedComplete
          : editedComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as ContactType,
    ) as $Val);
  }

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileEditStateImplCopyWith<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  factory _$$ProfileEditStateImplCopyWith(_$ProfileEditStateImpl value,
          $Res Function(_$ProfileEditStateImpl) then) =
      __$$ProfileEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user,
      bool loading,
      bool editedComplete,
      File? pickedFile,
      ContactType primaryContact});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileEditStateImplCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$ProfileEditStateImpl>
    implements _$$ProfileEditStateImplCopyWith<$Res> {
  __$$ProfileEditStateImplCopyWithImpl(_$ProfileEditStateImpl _value,
      $Res Function(_$ProfileEditStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loading = null,
    Object? editedComplete = null,
    Object? pickedFile = freezed,
    Object? primaryContact = null,
  }) {
    return _then(_$ProfileEditStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      editedComplete: null == editedComplete
          ? _value.editedComplete
          : editedComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as ContactType,
    ));
  }
}

/// @nodoc

class _$ProfileEditStateImpl implements _ProfileEditState {
  const _$ProfileEditStateImpl(
      {this.user,
      this.loading = false,
      this.editedComplete = false,
      this.pickedFile,
      this.primaryContact = ContactType.none});

  @override
  final UserModel? user;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool editedComplete;
  @override
  final File? pickedFile;
  @override
  @JsonKey()
  final ContactType primaryContact;

  @override
  String toString() {
    return 'ProfileEditState(user: $user, loading: $loading, editedComplete: $editedComplete, pickedFile: $pickedFile, primaryContact: $primaryContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEditStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.editedComplete, editedComplete) ||
                other.editedComplete == editedComplete) &&
            (identical(other.pickedFile, pickedFile) ||
                other.pickedFile == pickedFile) &&
            (identical(other.primaryContact, primaryContact) ||
                other.primaryContact == primaryContact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, loading, editedComplete, pickedFile, primaryContact);

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEditStateImplCopyWith<_$ProfileEditStateImpl> get copyWith =>
      __$$ProfileEditStateImplCopyWithImpl<_$ProfileEditStateImpl>(
          this, _$identity);
}

abstract class _ProfileEditState implements ProfileEditState {
  const factory _ProfileEditState(
      {final UserModel? user,
      final bool loading,
      final bool editedComplete,
      final File? pickedFile,
      final ContactType primaryContact}) = _$ProfileEditStateImpl;

  @override
  UserModel? get user;
  @override
  bool get loading;
  @override
  bool get editedComplete;
  @override
  File? get pickedFile;
  @override
  ContactType get primaryContact;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileEditStateImplCopyWith<_$ProfileEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
