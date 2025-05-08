import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_subscription_dto.freezed.dart';
part 'server_subscription_dto.g.dart';

@freezed
class ServerSubscriptionDTO with _$ServerSubscriptionDTO {
  const factory ServerSubscriptionDTO({
    required int id,
    required String mcode,
    required String typeName,
    required int transValue,
    required String operationType,
    required String valueMod,
    required bool canBuy,
    required int? orderNum,
    required double koef,
  }) = _ServerSubscriptionDTO;

  factory ServerSubscriptionDTO.fromJson(Map<String, dynamic> json) =>
      _$ServerSubscriptionDTOFromJson(json);
}
