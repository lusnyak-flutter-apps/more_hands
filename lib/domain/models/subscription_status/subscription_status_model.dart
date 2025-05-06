import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_status_model.freezed.dart';
part 'subscription_status_model.g.dart';

@freezed
class SubscriptionStatusModel with _$SubscriptionStatusModel {
  const factory SubscriptionStatusModel({
    required bool isActive,
    DateTime? expiryDate,
    String? currentPlan,
  }) = _SubscriptionStatusModel;

  factory SubscriptionStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStatusModelFromJson(json);
}
