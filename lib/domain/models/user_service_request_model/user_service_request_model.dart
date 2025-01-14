import 'package:more_hands/core/core.dart';

part 'user_service_request_model.g.dart';

@JsonSerializable()
class UserServiceRequestModel {
 int? userServiceId;
  String? servCatMCode;
  String? serviceMCode;
  String? addInfo;
  String? servMeasMCode;
  String? priceCurrency;
  num? price;
  List<String> locations;

 UserServiceRequestModel({
    this.userServiceId = 0,
    this.servCatMCode,
    this.serviceMCode,
    this.addInfo,
    this.servMeasMCode,
    this.priceCurrency,
    this.price = 0,
    this.locations = const <String>[],
  });

  factory UserServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserServiceRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserServiceRequestModelToJson(this);
}
