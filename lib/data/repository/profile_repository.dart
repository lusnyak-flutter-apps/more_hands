import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/user_remote/user_remote.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

@lazySingleton
class ProfileRepository {
  Future<UserModel?> getCurrentUserInfo() async =>
      await getIt<UserRemoteApi>().getCurrentUserInfo();
}
