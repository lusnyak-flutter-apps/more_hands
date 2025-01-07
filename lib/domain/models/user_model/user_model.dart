import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_info_model/user_info_model.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    UserInfoModel? userInfo,
    @Default(<ServiceModel>[]) List<ServiceModel> services,
  }) = _UserModel;


  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
