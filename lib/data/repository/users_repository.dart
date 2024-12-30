import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/user_remote/user_remote.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

@lazySingleton
class UsersRepository {
  Future<List<UserModel>> findUsersByLocAndText({int locId = 2, String txt = ""}) async =>
      await getIt<UserRemoteApi>().findUsersByLocAndText(locId, bio: txt);
}
