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

class _ProfileContactsView extends StatefulWidget {
  const _ProfileContactsView();

  @override
  State<_ProfileContactsView> createState() => _ProfileContactsViewState();
}

class _ProfileContactsViewState extends State<_ProfileContactsView> {
  int? primaryContact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.next,
        action: () {
          context.router.push(const ProfileAboutRoute());
        },
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
                    value: 0,
                    icon: MoreHandsAssets.icons.phone.svg())
                .paddingOnly(top: 16.h),
            contactItem(context,
                    hintText: context.localized.email,
                value: 1,
                    icon: MoreHandsAssets.icons.mail.svg())
                .paddingOnly(top: 16.h),
            contactItem(context,
                    hintText: context.localized.telegram,
                value: 2,
                    icon: MoreHandsAssets.icons.telegram.svg())
                .paddingOnly(top: 16.h),
            contactItem(context,
                    hintText: context.localized.whatsAppLink,
                value: 3,
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
        int? value,
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
            value: value,
            groupValue: primaryContact,
            onChanged: (_) {
              if(mounted){
                setState(() {
                  primaryContact = value;
                });
              }
            },
            label: context.localized.primaryContact,
          )
        ],
      );
}
