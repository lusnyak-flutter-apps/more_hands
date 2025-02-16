import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/request_status.dart';

part 'requests_count_model.freezed.dart';

part 'requests_count_model.g.dart';

@freezed
class RequestsCountModel with _$RequestsCountModel{
  const factory RequestsCountModel({
    @Default(0) int countSeen,
    @Default(0) int countNotSeen,
  }) = _RequestsCountModel;

  factory RequestsCountModel.fromJson(Map<String, dynamic> json) =>
      _$RequestsCountModelFromJson(json);
}
