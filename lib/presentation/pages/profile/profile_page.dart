import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/profile/cubit/profile_cubit.dart';
import 'package:more_hands/presentation/pages/profile/sub_widgets/profile_delete_bottom_view.dart';
import 'package:more_hands/presentation/pages/profile/sub_widgets/subscription_view.dart';
import 'package:more_hands/presentation/widgets/mh_language_list_view.dart';
import 'package:more_hands/presentation/widgets/portfolio_view.dart';
import 'package:more_hands/presentation/widgets/user_contacts_view.dart';
import 'package:more_hands/presentation/widgets/user_info_tags_view.dart';
import 'package:more_hands/presentation/widgets/user_name_id_view.dart';
import 'package:more_hands/presentation/widgets/what_can_do_view.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (BuildContext context) => getIt<ProfileCubit>()..loadProfile(),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child:
            BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          final loading = state.when(loading: () => true, loaded: (_, __) => false);
          final (user, file) = state.when(loading: () => (null, null), loaded: (user, file) => (user, file));

              debugPrint("${APIBase.url}${user?.userInfo?.profileImageUrl!}");

          if (loading) return const Center(child: CircularProgressIndicator());
          return SingleChildScrollView(
            padding: EdgeInsets.only(
                top: 24.h, bottom: 2 * kBottomNavigationBarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                profileImagePart(context, user).paddingOnly(bottom: 24.h),
                aboutUserPart(context, user),
                WhatCanDoView(
                  onEdit: () {
                    context.router.push(const ServicesListRoute());
                  },
                ).paddingOnly(bottom: 24.h),
                const PortfolioView(
                    // items: List.generate(
                    //     4, (i) => "https://picsum.photos/200/300?random=$i"),
                    ),
                const Divider().paddingSymmetric(vertical: 24.h),
                Row(
                  children: [
                    MHOutlinedButton(
                      title: context.localized.deleteProfile,
                      onPressed: () {
                        showProfileDeleteSheet(context);
                      },
                    ).expanded(),
                    8.w.widthBox,
                    MHOutlinedButton(
                      title: context.localized.logout,
                      onPressed: () {},
                      icon: MoreHandsAssets.icons.logout.svg(),
                    ).expanded(),
                  ],
                ),
                8.h.heightBox,
                MHOutlinedButton(
                  title: "Language",
                  onPressed: () async {
                    await showLanguages(context);
                  },
                ).paddingSymmetric(horizontal: context.width / 4),
              ],
            ).paddingSymmetric(horizontal: 24.w),
          );
        }),
      ),
    );
  }

  Widget profileImagePart(BuildContext context, UserModel? user) => Stack(
        children: [
          MHImage(
              size: context.width,
              emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 130.r),
              imageUrl: user?.userInfo?.profileImageUrl != null
                  ? "${APIBase.url}/${user!.userInfo!.profileImageUrl!}"
                  : null
              // "https://s3-alpha-sig.figma.com/img/5b4c/3cc9/5511bd0e458c8720e5240409b3476954?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Fcq0rWQJEG1pt8K70JOqTRe~2E9VOV7NDo3EhXVFGdCWkbbwToVoeXR5f5EN5j2jLgBEGJxwKa9TkIIJI7mlRb5SwNvNcYQnjVOTgaQpNBUPMbqqbpi20ZXmo33EYiHn-G8P9vinuVwk6KOwbsGQAji0q4azMqIE2VBHmDM4DvocDQedXh8sX-IhI3-WewYu2AbmiI33zsCm0SGpATFp-bBH2rfAyesioFJ~lrYlu4CXv-bgUXJWfm9UKNmAnDyGrxcwWuKMqWDb8uI0XLFtf8BhF3a5B6lPz3EzSo0mFuEgFSNGUc6xH1MryxqydR~u6HQ-jb-JIBQvCifG8Z~rAA__",
              ),
          Positioned(
            top: 8.h,
            right: 8.w,
            child: IconButton(
                onPressed: () {
                  if (user != null) {
                    context.router
                        .push(ProfileNameAndImageRoute(user: user))
                        .then((onValue) {
                      debugPrint(onValue.toString());
                      if (context.mounted) {
                        context.read<ProfileCubit>().loadProfile();
                      }
                    });
                  }
                },
                icon: MoreHandsAssets.icons.edit.svg(height: 20.r)),
          ),
          Positioned(
            bottom: 8.h,
            left: 8.w,
            child: Row(
              children: [
                MHGradientTag(
                  title: context.localized.passKYC,
                  onPressed: () {
                    showSubscriptionSheet(context);
                  },
                  icon: MoreHandsAssets.icons.hand.svg(
                      height: 16.r,
                      colorFilter: const ColorFilter.mode(
                          MHColors.blackBGColor, BlendMode.srcIn)),
                ),
                8.w.widthBox,
                MHGradientText(
                  text: context.localized.subscription,
                  style: body16MediumStyle,
                )
              ],
            ),
          )
        ],
      );

  Widget aboutUserPart(BuildContext context, UserModel? user) {
    final fName = user?.userInfo?.firstName ?? "";
    final lName = user?.userInfo?.lastName ?? "";

    String formattedName = fName;
    if (lName.isNotEmpty) {
      formattedName += " ${lName.substring(0, 1)}.";
    }
    String bio = user?.userInfo?.bio ?? "";
    List<ContactItem> contacts = <ContactItem>[];
    if (user?.userInfo?.instagramLink != null &&
        user!.userInfo!.instagramLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.instagramLink!,
          icon: MoreHandsAssets.icons.instagram.svg()));
    }
    if (user?.userInfo?.whatsappLink != null &&
        user!.userInfo!.whatsappLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.whatsappLink!,
          icon: MoreHandsAssets.icons.whatsapp.svg()));
    }
    if (user?.userInfo?.facebookLink != null &&
        user!.userInfo!.facebookLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.facebookLink!,
          icon: MoreHandsAssets.icons.facebook.svg()));
    }
    if (user?.userInfo?.telegramLink != null &&
        user!.userInfo!.telegramLink!.isNotEmpty) {
      contacts.add(ContactItem(
          name: user.userInfo!.telegramLink!,
          icon: MoreHandsAssets.icons.telegram.svg()));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UserNameIdView(
              name: formattedName,
              id: user?.userInfo?.id.toString(),
            ),
            8.h.heightBox,
            UserInfoTagsView(
              starsCount: user?.userInfo?.userRating.toInt() ?? 0,
              transactionsCount: user?.userInfo?.dealCountSpend.toInt() ?? 0,
              referralsCount: user?.userInfo?.refCount.toInt() ?? 0,
              onReferralsTap: () {
                context.router.push(const ReferralsRoute());
              },
            ),
          ],
        ).paddingOnly(bottom: 4.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.localized.aboutMe,
                  style: body16MediumStyle,
                  textAlign: TextAlign.left,
                ),
                MHInkWell(
                  child: MoreHandsAssets.icons.edit.svg(),
                  onTap: () {
                    if (user != null) {
                      context.router
                          .push(ProfileContactsRoute(user: user))
                          .then((onValue) {
                        debugPrint(onValue.toString());
                        if (context.mounted) {
                          context.read<ProfileCubit>().loadProfile();
                        }
                      });
                    }
                  },
                ),
              ],
            ),
            if (bio.isNotEmpty)
              Text(
                bio,
                style: body16Style,
                textAlign: TextAlign.left,
              ).paddingOnly(bottom: 8.h)
            else
              Text(
                context.localized.notFilled,
                style: body16Style.copyWith(color: MHColors.grayColor98),
                textAlign: TextAlign.left,
              ),
            if (contacts.isNotEmpty)
              UserContactsView(
                contacts: contacts,
              ),
          ],
        ).paddingOnly(bottom: 24.h),
      ],
    );
  }

  Future<void> showProfileDeleteSheet(BuildContext context) async {
    await showMHModalBottomSheet(
      context,
      title: "${context.localized.deleteProfile}?",
      child: const ProfileDeleteBottomView(),
    );
  }

  Future<void> showSubscriptionSheet(BuildContext context) async {
    await showMHModalBottomSheet(
      context,
      isScrollControlled: true,
      title: context.localized.subscription,
      child: const SubscriptionView(),
    );
  }

  Future<void> showLanguages(BuildContext context) async {
    await showMHModalBottomSheet(
      context,
      title: context.localized.changeLanguage,
      child: const MhLanguageListView(),
    );
  }
}
