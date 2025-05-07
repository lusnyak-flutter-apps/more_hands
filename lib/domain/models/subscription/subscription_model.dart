import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@freezed
class SubscriptionModel with _$SubscriptionModel {
  const factory SubscriptionModel({
    required String id,
    required String title,
    required String description,
    required double price,
    required int durationInDays,
    String? currencySymbol,
    @Default(1.0) double koef,
    @Default(0) int orderNum,
    @Default(true) bool canBuy,
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
}
