import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_name_request_model.g.dart';

@JsonSerializable()
class EditNameRequestModel {
  String? firstName;
  String? lastName;
  String? middleName;

  EditNameRequestModel({
    this.firstName,
    this.lastName,
    this.middleName,
  });

  factory EditNameRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EditNameRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditNameRequestModelToJson(this);
}
