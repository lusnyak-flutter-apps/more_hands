// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyModel {
  int get id => throw _privateConstructorUsedError;
  CurrencyCode get curCode => throw _privateConstructorUsedError;
  int get curNumber => throw _privateConstructorUsedError;
  String get curName => throw _privateConstructorUsedError;

  /// Serializes this CurrencyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res, CurrencyModel>;
  @useResult
  $Res call({int id, CurrencyCode curCode, int curNumber, String curName});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res, $Val extends CurrencyModel>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? curCode = null,
    Object? curNumber = null,
    Object? curName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      curCode: null == curCode
          ? _value.curCode
          : curCode // ignore: cast_nullable_to_non_nullable
              as CurrencyCode,
      curNumber: null == curNumber
          ? _value.curNumber
          : curNumber // ignore: cast_nullable_to_non_nullable
              as int,
      curName: null == curName
          ? _value.curName
          : curName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyModelImplCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$$CurrencyModelImplCopyWith(
          _$CurrencyModelImpl value, $Res Function(_$CurrencyModelImpl) then) =
      __$$CurrencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, CurrencyCode curCode, int curNumber, String curName});
}

/// @nodoc
class __$$CurrencyModelImplCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res, _$CurrencyModelImpl>
    implements _$$CurrencyModelImplCopyWith<$Res> {
  __$$CurrencyModelImplCopyWithImpl(
      _$CurrencyModelImpl _value, $Res Function(_$CurrencyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? curCode = null,
    Object? curNumber = null,
    Object? curName = null,
  }) {
    return _then(_$CurrencyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      curCode: null == curCode
          ? _value.curCode
          : curCode // ignore: cast_nullable_to_non_nullable
              as CurrencyCode,
      curNumber: null == curNumber
          ? _value.curNumber
          : curNumber // ignore: cast_nullable_to_non_nullable
              as int,
      curName: null == curName
          ? _value.curName
          : curName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyModelImpl implements _CurrencyModel {
  const _$CurrencyModelImpl(
      {required this.id,
      required this.curCode,
      required this.curNumber,
      required this.curName});

  factory _$CurrencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyModelImplFromJson(json);

  @override
  final int id;
  @override
  final CurrencyCode curCode;
  @override
  final int curNumber;
  @override
  final String curName;

  @override
  String toString() {
    return 'CurrencyModel(id: $id, curCode: $curCode, curNumber: $curNumber, curName: $curName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.curCode, curCode) || other.curCode == curCode) &&
            (identical(other.curNumber, curNumber) ||
                other.curNumber == curNumber) &&
            (identical(other.curName, curName) || other.curName == curName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, curCode, curNumber, curName);

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyModelImplCopyWith<_$CurrencyModelImpl> get copyWith =>
      __$$CurrencyModelImplCopyWithImpl<_$CurrencyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyModelImplToJson(
      this,
    );
  }
}

abstract class _CurrencyModel implements CurrencyModel {
  const factory _CurrencyModel(
      {required final int id,
      required final CurrencyCode curCode,
      required final int curNumber,
      required final String curName}) = _$CurrencyModelImpl;

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyModelImpl.fromJson;

  @override
  int get id;
  @override
  CurrencyCode get curCode;
  @override
  int get curNumber;
  @override
  String get curName;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyModelImplCopyWith<_$CurrencyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
