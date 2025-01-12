import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/edit_profile/cubit/profile_edit_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileAboutPage extends StatelessWidget {
  const ProfileAboutPage({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileEditCubit>(
      create: (BuildContext context) =>
          getIt<ProfileEditCubit>()..loadBio(user),
      child: const _ProfileAboutView(),
    );
  }
}

class _ProfileAboutView extends StatelessWidget {
  const _ProfileAboutView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileEditCubit>();
    return BlocConsumer<ProfileEditCubit, ProfileEditState>(
      listener: (_, state){
        if (state.editedComplete) {
           context.router.popUntilRoot();
          cubit.resetComplete();
        }
      },
        builder: (context, state) {
      final cubit = context.read<ProfileEditCubit>();
      return Scaffold(
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.save,
          actionLoading: state.loading,
          action: cubit.saveBioChanges,
        ).paddingOnly(bottom: 16.h),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 24.w,
          title: Text(
            context.localized.tellAboutYourSelf,
            style: body28SemiBoldStyle,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  context.localized.brieflyDescribeWhatYouWantToDo,
                  style: body16MediumStyle,
                ).paddingOnly(bottom: 16.h),
                MHTextField(
                  hintText: context.localized.tellAboutYourSelf,
                  maxLines: 10,
                  autofocus: true,
                  controller: cubit.bioController,
                ),
              ],
            ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
          ),
        ),
      );
    });
  }
}
