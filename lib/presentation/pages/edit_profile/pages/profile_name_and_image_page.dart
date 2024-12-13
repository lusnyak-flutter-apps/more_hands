import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileNameAndImagePage extends StatelessWidget {
  const ProfileNameAndImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProfileNameAndImageView();
  }
}

class _ProfileNameAndImageView extends StatelessWidget {
  const _ProfileNameAndImageView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.next,
        action: () {
          context.router.push(const ProfileContactsRoute());
        },
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
            const MHTextField(
              hintText: "Name L.",
              hintColor: MHColors.whiteColor,
            ),
            24.h.heightBox,
            MHImagePicker(
              onPicked: (file) {
                debugPrint(file.path);
              },
              child: AspectRatio(
                aspectRatio: 1,
                child: MHRoundedContainer(
                  borderGradientColors: const [
                    MHColors.yellowColor,
                    MHColors.amberColor
                  ],
                  child: MoreHandsAssets.icons.photoPlus.svg().paddingAll(64.w),
                ),
              ),
            )
          ],
        ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
      )),
    );
  }
}
