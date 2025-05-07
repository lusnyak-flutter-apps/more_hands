// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionStatusModel _$SubscriptionStatusModelFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionStatusModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionStatusModel {
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get currentPlan => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionStatusModelCopyWith<SubscriptionStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStatusModelCopyWith<$Res> {
  factory $SubscriptionStatusModelCopyWith(SubscriptionStatusModel value,
          $Res Function(SubscriptionStatusModel) then) =
      _$SubscriptionStatusModelCopyWithImpl<$Res, SubscriptionStatusModel>;
  @useResult
  $Res call({bool isActive, DateTime? expiryDate, String? currentPlan});
}

/// @nodoc
class _$SubscriptionStatusModelCopyWithImpl<$Res,
        $Val extends SubscriptionStatusModel>
    implements $SubscriptionStatusModelCopyWith<$Res> {
  _$SubscriptionStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? expiryDate = freezed,
    Object? currentPlan = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentPlan: freezed == currentPlan
          ? _value.currentPlan
          : currentPlan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionStatusModelImplCopyWith<$Res>
    implements $SubscriptionStatusModelCopyWith<$Res> {
  factory _$$SubscriptionStatusModelImplCopyWith(
          _$SubscriptionStatusModelImpl value,
          $Res Function(_$SubscriptionStatusModelImpl) then) =
      __$$SubscriptionStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isActive, DateTime? expiryDate, String? currentPlan});
}

/// @nodoc
class __$$SubscriptionStatusModelImplCopyWithImpl<$Res>
    extends _$SubscriptionStatusModelCopyWithImpl<$Res,
        _$SubscriptionStatusModelImpl>
    implements _$$SubscriptionStatusModelImplCopyWith<$Res> {
  __$$SubscriptionStatusModelImplCopyWithImpl(
      _$SubscriptionStatusModelImpl _value,
      $Res Function(_$SubscriptionStatusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? expiryDate = freezed,
    Object? currentPlan = freezed,
  }) {
    return _then(_$SubscriptionStatusModelImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentPlan: freezed == currentPlan
          ? _value.currentPlan
          : currentPlan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionStatusModelImpl implements _SubscriptionStatusModel {
  const _$SubscriptionStatusModelImpl(
      {required this.isActive, this.expiryDate, this.currentPlan});

  factory _$SubscriptionStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionStatusModelImplFromJson(json);

  @override
  final bool isActive;
  @override
  final DateTime? expiryDate;
  @override
  final String? currentPlan;

  @override
  String toString() {
    return 'SubscriptionStatusModel(isActive: $isActive, expiryDate: $expiryDate, currentPlan: $currentPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStatusModelImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.currentPlan, currentPlan) ||
                other.currentPlan == currentPlan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isActive, expiryDate, currentPlan);

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStatusModelImplCopyWith<_$SubscriptionStatusModelImpl>
      get copyWith => __$$SubscriptionStatusModelImplCopyWithImpl<
          _$SubscriptionStatusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionStatusModelImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionStatusModel implements SubscriptionStatusModel {
  const factory _SubscriptionStatusModel(
      {required final bool isActive,
      final DateTime? expiryDate,
      final String? currentPlan}) = _$SubscriptionStatusModelImpl;

  factory _SubscriptionStatusModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionStatusModelImpl.fromJson;

  @override
  bool get isActive;
  @override
  DateTime? get expiryDate;
  @override
  String? get currentPlan;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionStatusModelImplCopyWith<_$SubscriptionStatusModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
