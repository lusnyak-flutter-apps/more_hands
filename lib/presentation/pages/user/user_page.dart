import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/user/cubit/user_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/presentation/widgets/portfolio_view.dart';
import 'package:more_hands/presentation/widgets/service_info_view.dart';
import 'package:more_hands/presentation/widgets/user_contacts_view.dart';
import 'package:more_hands/presentation/widgets/user_info_tags_view.dart';
import 'package:more_hands/presentation/widgets/user_name_id_view.dart';
import 'package:more_hands/presentation/widgets/what_can_do_view.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (BuildContext context) => getIt<UserCubit>()..loadUser(user),
      child: const _UserView(),
    );
  }
}

class _UserView extends StatelessWidget {
  const _UserView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.sendRequest,
        action: () {
          context.router.push(const SendRequestRoute());
        },
      ).paddingOnly(bottom: 16.h),
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<UserCubit, UserState>(builder: (context, state) {
          final loading = state.when(loading: () => true, loaded: (_) => false);
          final user = state.when(loading: () => null, loaded: (user) => user);
          if (loading) return const Center(child: CircularProgressIndicator());
          return SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 24.h, bottom: 2 * kBottomNavigationBarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                userImagePart(context, user!).paddingOnly(bottom: 24.h),
                aboutUserPart(context, user).paddingOnly(bottom: 24.h),
                WhatCanDoView(
                  items:  List.generate(8, (i) => "Service $i"),
                ).paddingOnly(bottom: 24.h),
                PortfolioView(
                  items: List.generate(
                      4, (i) => "https://picsum.photos/200/300?random=$i"),
                  onTapItem: (index) {
                    debugPrint("Portfolio item $index");
                    showServiceView(context);
                  },
                ).paddingOnly(bottom: 24.h),
              ],
            ).paddingSymmetric(horizontal: 24.w),
          );
        }),
      ),
    );
  }

  Widget userImagePart(BuildContext context, UserModel user) => MHImage(
      size: context.width,
      emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 130.r),
      imageUrl: "https://i.pravatar.cc/300?img=1");

  Widget aboutUserPart(BuildContext context, UserModel user) {
    String formattedName =
        "${user.userInfo?.firstName} ${user.userInfo?.lastName?.substring(0, 1)}.";
    String bio = user.userInfo?.bio ?? "";

    List<ContactItem> contacts = <ContactItem>[];
    if (user.userInfo?.instagramLink != null &&
        user.userInfo!.instagramLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.instagramLink!,
          icon: MoreHandsAssets.icons.instagram.svg()));
    }
    if (user.userInfo?.whatsappLink != null &&
        user.userInfo!.whatsappLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.whatsappLink!,
          icon: MoreHandsAssets.icons.whatsapp.svg()));
    }
    if (user.userInfo?.facebookLink != null &&
        user.userInfo!.facebookLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.facebookLink!,
          icon: MoreHandsAssets.icons.facebook.svg()));
    }
    if (user.userInfo?.telegramLink != null &&
        user.userInfo!.telegramLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.telegramLink!,
          icon: MoreHandsAssets.icons.telegram.svg()));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        UserNameIdView(
          name: formattedName,
          id: user.userInfo?.id.toString(),
        ),
        8.h.heightBox,
        const UserInfoTagsView(
          starsCount: 0,
          transactionsCount: 0,
          referralsCount: 0,
        ).paddingOnly(bottom: 8.h),
        _buildSendCodeToFriends(context).paddingOnly(bottom: 8.h),
        if (contacts.isNotEmpty)
          UserContactsView(
            contacts: contacts,
          ).paddingOnly(bottom: 8.h),
        if (bio.isNotEmpty)
          Text(
            bio,
            style: body16Style,
            textAlign: TextAlign.left,
          ).paddingOnly(bottom: 2.h)
      ],
    );
  }

  Widget _buildSendCodeToFriends(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: () {
          debugPrint("Send code to your friends 1");
        },
        child: MHRoundedContainer(
          color: MHColors.blackBGColor.withOpacity(0.5),
          borderGradientColors: const [
            MHColors.yellowColor,
            MHColors.amberColor,
          ],
          child: Row(
            children: [
              MHCircleGradientContainer(
                size: 32.r,
                child: MoreHandsAssets.icons.wavyHelp.svg(
                  colorFilter: const ColorFilter.mode(
                      MHColors.blackBGColor, BlendMode.srcIn),
                ),
              ),
              8.w.widthBox,
              Text(
                context.localized.sendCodeToYourFriends,
                style: body16Style,
              ),
            ],
          ).paddingAll(4.r),
        ),
      );

  Future<void> showServiceView(BuildContext context) async {
    await showMHScrollModalBottomSheet(
      context,
      title: "Service title",
      child: const ServiceInfoView(),
    );
  }
}
