import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_token_request_model.g.dart';

@JsonSerializable()
class FirebaseTokenRequestModel {
  String? firebaseToken;

  FirebaseTokenRequestModel({
    this.firebaseToken,
  });

  factory FirebaseTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseTokenRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$FirebaseTokenRequestModelToJson(this);
}
