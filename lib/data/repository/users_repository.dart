import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/user_remote/user_remote.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

@lazySingleton
class UsersRepository {
  Future<List<UserModel>> findUsersByLocAndText({required int locId, String txt = ""}) async =>
      await getIt<UserRemoteApi>().findUsersByLocAndText(locId, bio: txt);

  Future<List<UserModel>> findUsersByLocAndServices({required int locId, required int service}) async =>
      await getIt<UserRemoteApi>().findUsersByLocAndServices(locId, service);
}
