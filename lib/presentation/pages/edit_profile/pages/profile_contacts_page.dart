import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileContactsPage extends StatelessWidget {
  const ProfileContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProfileContactsView();
  }
}

class _ProfileContactsView extends StatelessWidget {
  const _ProfileContactsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.next,
        action: () {},
      ).paddingOnly(bottom: 16.h),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 24.w,
        title: Text(
          context.localized.addContacts,
          style: body28SemiBoldStyle,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              context.localized.theyWillBeVisibleToOthersOnlyWithYourConsent,
              style: body16MediumStyle,
            ),
            contactItem(context,
                    hintText: "+123 456 789",
                    icon: MoreHandsAssets.icons.phone.svg())
                .paddingOnly(top: 16.h),
            contactItem(context,
                    hintText: context.localized.email,
                    icon: MoreHandsAssets.icons.mail.svg())
                .paddingOnly(top: 16.h),
            contactItem(context,
                    hintText: context.localized.telegram,
                    icon: MoreHandsAssets.icons.telegram.svg())
                .paddingOnly(top: 16.h),
            contactItem(context,
                    hintText: context.localized.whatsAppLink,
                    icon: MoreHandsAssets.icons.whatsapp.svg())
                .paddingOnly(top: 16.h),
          ],
        ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
      )),
    );
  }

  Widget contactItem(
    BuildContext context, {
    String? hintText,
    TextEditingController? controller,
    Widget? icon,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MHTextField(
            controller: controller,
            hintText: hintText,
            prefixIcon: icon,
          ),
          MHRadioListTile(
            value: 0,
            groupValue: 1,
            onChanged: (onChanged) {},
            label: context.localized.primaryContact,
          )
        ],
      );
}
