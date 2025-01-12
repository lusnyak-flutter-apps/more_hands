import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_contacts_request_model.g.dart';

@JsonSerializable()
class EditContactsRequestModel {
  String? phoneNumber;
  String? instagramLink;
  String? facebookLink;
  String? telegramLink;
  String? whatsappLink;

  EditContactsRequestModel({
    this.telegramLink,
    this.whatsappLink,
    this.facebookLink,
    this.instagramLink,
    this.phoneNumber,
  });

  factory EditContactsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EditContactsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditContactsRequestModelToJson(this);
}
