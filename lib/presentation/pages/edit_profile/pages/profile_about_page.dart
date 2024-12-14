import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileAboutPage extends StatelessWidget {
  const ProfileAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProfileAboutView();
  }
}

class _ProfileAboutView extends StatelessWidget {
  const _ProfileAboutView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.save,
        action: () {
         },
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
                minLines: 10,
              ),
              // Spacer()
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
        ),
      ),
    );
  }
}
