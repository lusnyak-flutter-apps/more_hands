import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/edit_profile/cubit/profile_edit_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileNameAndImagePage extends StatelessWidget {
  const ProfileNameAndImagePage({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileEditCubit>(
      create: (BuildContext context) =>
          getIt<ProfileEditCubit>()..loadNameAndImage(user),
      child: const _ProfileNameAndImageView( ),
    );
  }
}

class _ProfileNameAndImageView extends StatelessWidget {
  const _ProfileNameAndImageView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileEditCubit>();
    return BlocConsumer<ProfileEditCubit, ProfileEditState>(
      listener: (_, state){
        if(state.editedComplete) {
          context.router.push(ProfileContactsRoute(user: state.user!));
          cubit.resetComplete();
        }
      },
      builder: (blocBuilderContext, state) {
           return Scaffold(
            bottomSheet: MHBottomNavigationControl(
              buttonTitle: context.localized.next,
              actionLoading: state.loading,
              action: cubit.saveNameAndImageChanges,
            ).paddingOnly(bottom: 16.h),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: false,
              titleSpacing: 24.w,
              title: Text(
                context.localized.nameAndPhotoProfile,
                style: body28SemiBoldStyle,
              ),
            ),
            body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MHTextField(
                        hintText: "Name L.",
                        hintColor: MHColors.whiteColor,
                        controller: cubit.nameController,
                      ),
                      24.h.heightBox,
                      MHImagePicker(
                        onPicked: cubit.pickImageFile,
                        child: state.pickedFile != null ? MHImage(
                            size: context.width,
                            emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 130.r),
                            file: state.pickedFile,
                        ) : AspectRatio(
                          aspectRatio: 1,
                          child: MHRoundedContainer(
                            borderGradientColors: const [
                              MHColors.yellowColor,
                              MHColors.amberColor
                            ],

                            child: MoreHandsAssets.icons.photoPlus.svg()
                                .paddingAll(64.w),
                          ),
                        ),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
                )),
          );
        }
    );
  }
}
