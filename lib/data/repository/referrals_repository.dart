import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/user_remote/user_remote.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

@lazySingleton
class ReferralsRepository {
  Future<List<UserModel>> getCurrentUserReferralsInfo() async =>
      await getIt<UserRemoteApi>().getCurrentUserReferralsInfo();
}
