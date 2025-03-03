import 'dart:io';

import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  Future<void> loadProfile() async {
    await getIt<ProfileRepository>().getCurrentUserInfo().then((value) async {
      if(value != null) {
        // final url = "${APIBase.url}${value.userInfo!.profileImageUrl}";
        // debugPrint(url);
        // final file = await getIt<ProfileRepository>().getUserImage(value.userInfo!.profileImageUrl!);
        // debugPrint(jsonEncode(file.toString()).runtimeType.toString());
        emit(ProfileState(user: value /*, userProfileImage: file*/));
       }
    });
  }

  Future<void> logout() async {
    await getIt<ProfileRepository>().logout();
  }

  Future<void> deleteUserService(int id)async {
    await getIt<ServiceRepository>().deleteUserService(id).then((onValue){
        loadProfile();
    });
  }
}
