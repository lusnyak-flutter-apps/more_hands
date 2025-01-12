import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_bio_request_model.g.dart';

@JsonSerializable()
class EditBioRequestModel {
  String? bio;

  EditBioRequestModel({
    this.bio,
  });

  factory EditBioRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EditBioRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditBioRequestModelToJson(this);
}
