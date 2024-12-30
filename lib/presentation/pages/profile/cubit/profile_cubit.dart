import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/profile_repository.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.loading());

  Future<void> loadProfile() async {
    await getIt<ProfileRepository>().getCurrentUserInfo().then((value) {
      if(value != null) {
        emit(ProfileState.loaded(user: value));
       }
    });
  }
}
