import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/contact_type.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/edit_profile/cubit/profile_edit_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfileContactsPage extends StatelessWidget {
  const ProfileContactsPage({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileEditCubit>(
      create: (BuildContext context) =>
          getIt<ProfileEditCubit>()..loadContacts(user),
      child: const _ProfileContactsView(),
    );
  }
}

class _ProfileContactsView extends StatelessWidget {
  const _ProfileContactsView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileEditCubit>();
    return BlocConsumer<ProfileEditCubit, ProfileEditState>(
        listener: (_, state) {
      if (state.editedComplete) {
        context.router.push(ProfileAboutRoute(user: state.user!));
        cubit.resetComplete();
      }
    }, builder: (blocConsumerBuilder, state) {
      return Scaffold(
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.next,
          actionLoading: state.loading,
          action: cubit.saveContactsChanges,
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
              contactItem(
                context,
                hintText: context.localized.linkType("Instagram"),
                value: ContactType.instagram,
                controller: cubit.instagramController,
                icon: MoreHandsAssets.icons.instagram.svg(),
                state: state,
              ).paddingOnly(top: 16.h),
              contactItem(
                context,
                hintText: context.localized.linkType("Facebook"),
                value: ContactType.facebook,
                icon: MoreHandsAssets.icons.facebook.svg(),
                controller: cubit.fbController,
                state: state,
              ).paddingOnly(top: 16.h),
              contactItem(
                context,
                hintText: context.localized.telegram,
                value: ContactType.telegram,
                icon: MoreHandsAssets.icons.telegram.svg(),
                controller: cubit.telegramController,
                state: state,
              ).paddingOnly(top: 16.h),
              contactItem(
                context,
                hintText: context.localized.whatsAppLink,
                value: ContactType.whatsApp,
                icon: MoreHandsAssets.icons.whatsapp.svg(),
                controller: cubit.whatsAppController,
                state: state,
              ).paddingOnly(top: 16.h),
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
        )),
      );
    });
  }

  Widget contactItem(
    BuildContext context, {
    required ProfileEditState state,
    required ContactType value,
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
          MHRadioListTile<ContactType>(
            value: value,
            groupValue: state.primaryContact,
            onChanged: context.read<ProfileEditCubit>().changePrimaryContact,
            label: context.localized.primaryContact,
          )
        ],
      );
}
