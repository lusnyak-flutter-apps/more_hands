// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserInfoModel {
  int get id => throw _privateConstructorUsedError;
  String get userLogin => throw _privateConstructorUsedError;
  bool get userKYCApproved => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get instagramLink => throw _privateConstructorUsedError;
  String? get facebookLink => throw _privateConstructorUsedError;
  String? get telegramLink => throw _privateConstructorUsedError;
  String? get whatsappLink => throw _privateConstructorUsedError;
  @JsonKey(name: "subscrEndDate")
  DateTime? get subscriptionEndDate => throw _privateConstructorUsedError;
  num get userRating => throw _privateConstructorUsedError;
  num get refCount => throw _privateConstructorUsedError;
  num get dealCountAdd => throw _privateConstructorUsedError;
  num get dealCountSpend => throw _privateConstructorUsedError;
  bool get shaken => throw _privateConstructorUsedError;

  /// Serializes this UserInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call(
      {int id,
      String userLogin,
      bool userKYCApproved,
      String? firstName,
      String? lastName,
      String? middleName,
      String? bio,
      String? profileImageUrl,
      String? instagramLink,
      String? facebookLink,
      String? telegramLink,
      String? whatsappLink,
      @JsonKey(name: "subscrEndDate") DateTime? subscriptionEndDate,
      num userRating,
      num refCount,
      num dealCountAdd,
      num dealCountSpend,
      bool shaken});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userLogin = null,
    Object? userKYCApproved = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? bio = freezed,
    Object? profileImageUrl = freezed,
    Object? instagramLink = freezed,
    Object? facebookLink = freezed,
    Object? telegramLink = freezed,
    Object? whatsappLink = freezed,
    Object? subscriptionEndDate = freezed,
    Object? userRating = null,
    Object? refCount = null,
    Object? dealCountAdd = null,
    Object? dealCountSpend = null,
    Object? shaken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userKYCApproved: null == userKYCApproved
          ? _value.userKYCApproved
          : userKYCApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramLink: freezed == instagramLink
          ? _value.instagramLink
          : instagramLink // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookLink: freezed == facebookLink
          ? _value.facebookLink
          : facebookLink // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramLink: freezed == telegramLink
          ? _value.telegramLink
          : telegramLink // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappLink: freezed == whatsappLink
          ? _value.whatsappLink
          : whatsappLink // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionEndDate: freezed == subscriptionEndDate
          ? _value.subscriptionEndDate
          : subscriptionEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as num,
      refCount: null == refCount
          ? _value.refCount
          : refCount // ignore: cast_nullable_to_non_nullable
              as num,
      dealCountAdd: null == dealCountAdd
          ? _value.dealCountAdd
          : dealCountAdd // ignore: cast_nullable_to_non_nullable
              as num,
      dealCountSpend: null == dealCountSpend
          ? _value.dealCountSpend
          : dealCountSpend // ignore: cast_nullable_to_non_nullable
              as num,
      shaken: null == shaken
          ? _value.shaken
          : shaken // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoModelImplCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$UserInfoModelImplCopyWith(
          _$UserInfoModelImpl value, $Res Function(_$UserInfoModelImpl) then) =
      __$$UserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userLogin,
      bool userKYCApproved,
      String? firstName,
      String? lastName,
      String? middleName,
      String? bio,
      String? profileImageUrl,
      String? instagramLink,
      String? facebookLink,
      String? telegramLink,
      String? whatsappLink,
      @JsonKey(name: "subscrEndDate") DateTime? subscriptionEndDate,
      num userRating,
      num refCount,
      num dealCountAdd,
      num dealCountSpend,
      bool shaken});
}

/// @nodoc
class __$$UserInfoModelImplCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$UserInfoModelImpl>
    implements _$$UserInfoModelImplCopyWith<$Res> {
  __$$UserInfoModelImplCopyWithImpl(
      _$UserInfoModelImpl _value, $Res Function(_$UserInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userLogin = null,
    Object? userKYCApproved = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? bio = freezed,
    Object? profileImageUrl = freezed,
    Object? instagramLink = freezed,
    Object? facebookLink = freezed,
    Object? telegramLink = freezed,
    Object? whatsappLink = freezed,
    Object? subscriptionEndDate = freezed,
    Object? userRating = null,
    Object? refCount = null,
    Object? dealCountAdd = null,
    Object? dealCountSpend = null,
    Object? shaken = null,
  }) {
    return _then(_$UserInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      userKYCApproved: null == userKYCApproved
          ? _value.userKYCApproved
          : userKYCApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramLink: freezed == instagramLink
          ? _value.instagramLink
          : instagramLink // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookLink: freezed == facebookLink
          ? _value.facebookLink
          : facebookLink // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramLink: freezed == telegramLink
          ? _value.telegramLink
          : telegramLink // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappLink: freezed == whatsappLink
          ? _value.whatsappLink
          : whatsappLink // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionEndDate: freezed == subscriptionEndDate
          ? _value.subscriptionEndDate
          : subscriptionEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userRating: null == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as num,
      refCount: null == refCount
          ? _value.refCount
          : refCount // ignore: cast_nullable_to_non_nullable
              as num,
      dealCountAdd: null == dealCountAdd
          ? _value.dealCountAdd
          : dealCountAdd // ignore: cast_nullable_to_non_nullable
              as num,
      dealCountSpend: null == dealCountSpend
          ? _value.dealCountSpend
          : dealCountSpend // ignore: cast_nullable_to_non_nullable
              as num,
      shaken: null == shaken
          ? _value.shaken
          : shaken // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoModelImpl implements _UserInfoModel {
  const _$UserInfoModelImpl(
      {required this.id,
      required this.userLogin,
      this.userKYCApproved = false,
      this.firstName,
      this.lastName,
      this.middleName,
      this.bio,
      this.profileImageUrl,
      this.instagramLink,
      this.facebookLink,
      this.telegramLink,
      this.whatsappLink,
      @JsonKey(name: "subscrEndDate") this.subscriptionEndDate,
      this.userRating = 0,
      this.refCount = 0,
      this.dealCountAdd = 0,
      this.dealCountSpend = 0,
      this.shaken = false});

  factory _$UserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String userLogin;
  @override
  @JsonKey()
  final bool userKYCApproved;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? middleName;
  @override
  final String? bio;
  @override
  final String? profileImageUrl;
  @override
  final String? instagramLink;
  @override
  final String? facebookLink;
  @override
  final String? telegramLink;
  @override
  final String? whatsappLink;
  @override
  @JsonKey(name: "subscrEndDate")
  final DateTime? subscriptionEndDate;
  @override
  @JsonKey()
  final num userRating;
  @override
  @JsonKey()
  final num refCount;
  @override
  @JsonKey()
  final num dealCountAdd;
  @override
  @JsonKey()
  final num dealCountSpend;
  @override
  @JsonKey()
  final bool shaken;

  @override
  String toString() {
    return 'UserInfoModel(id: $id, userLogin: $userLogin, userKYCApproved: $userKYCApproved, firstName: $firstName, lastName: $lastName, middleName: $middleName, bio: $bio, profileImageUrl: $profileImageUrl, instagramLink: $instagramLink, facebookLink: $facebookLink, telegramLink: $telegramLink, whatsappLink: $whatsappLink, subscriptionEndDate: $subscriptionEndDate, userRating: $userRating, refCount: $refCount, dealCountAdd: $dealCountAdd, dealCountSpend: $dealCountSpend, shaken: $shaken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userKYCApproved, userKYCApproved) ||
                other.userKYCApproved == userKYCApproved) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.instagramLink, instagramLink) ||
                other.instagramLink == instagramLink) &&
            (identical(other.facebookLink, facebookLink) ||
                other.facebookLink == facebookLink) &&
            (identical(other.telegramLink, telegramLink) ||
                other.telegramLink == telegramLink) &&
            (identical(other.whatsappLink, whatsappLink) ||
                other.whatsappLink == whatsappLink) &&
            (identical(other.subscriptionEndDate, subscriptionEndDate) ||
                other.subscriptionEndDate == subscriptionEndDate) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.refCount, refCount) ||
                other.refCount == refCount) &&
            (identical(other.dealCountAdd, dealCountAdd) ||
                other.dealCountAdd == dealCountAdd) &&
            (identical(other.dealCountSpend, dealCountSpend) ||
                other.dealCountSpend == dealCountSpend) &&
            (identical(other.shaken, shaken) || other.shaken == shaken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userLogin,
      userKYCApproved,
      firstName,
      lastName,
      middleName,
      bio,
      profileImageUrl,
      instagramLink,
      facebookLink,
      telegramLink,
      whatsappLink,
      subscriptionEndDate,
      userRating,
      refCount,
      dealCountAdd,
      dealCountSpend,
      shaken);

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      __$$UserInfoModelImplCopyWithImpl<_$UserInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  const factory _UserInfoModel(
      {required final int id,
      required final String userLogin,
      final bool userKYCApproved,
      final String? firstName,
      final String? lastName,
      final String? middleName,
      final String? bio,
      final String? profileImageUrl,
      final String? instagramLink,
      final String? facebookLink,
      final String? telegramLink,
      final String? whatsappLink,
      @JsonKey(name: "subscrEndDate") final DateTime? subscriptionEndDate,
      final num userRating,
      final num refCount,
      final num dealCountAdd,
      final num dealCountSpend,
      final bool shaken}) = _$UserInfoModelImpl;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$UserInfoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get userLogin;
  @override
  bool get userKYCApproved;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get middleName;
  @override
  String? get bio;
  @override
  String? get profileImageUrl;
  @override
  String? get instagramLink;
  @override
  String? get facebookLink;
  @override
  String? get telegramLink;
  @override
  String? get whatsappLink;
  @override
  @JsonKey(name: "subscrEndDate")
  DateTime? get subscriptionEndDate;
  @override
  num get userRating;
  @override
  num get refCount;
  @override
  num get dealCountAdd;
  @override
  num get dealCountSpend;
  @override
  bool get shaken;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
