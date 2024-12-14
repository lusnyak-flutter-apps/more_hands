import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProfileView();
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
              top: 24.h, bottom: 2 * kBottomNavigationBarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              profileImagePart(context),
              24.h.heightBox,
              aboutUserPart(context),
              24.h.heightBox,
              const Divider(),
              24.h.heightBox,
              Row(
                children: [
                  MHOutlinedButton(
                    title: context.localized.deleteProfile,
                    onPressed: () {},
                  ).expanded(),
                  8.w.widthBox,
                  MHOutlinedButton(
                    title: context.localized.logout,
                    onPressed: () {},
                    icon: MoreHandsAssets.icons.logout.svg(),
                  ).expanded(),
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 24.w),
        ),
      ),
    );
  }

  Widget profileImagePart(BuildContext context) => Stack(
        children: [
          MHImage(
            size: context.width,
            emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 130.r),
            // imageUrl:
            // "https://s3-alpha-sig.figma.com/img/5b4c/3cc9/5511bd0e458c8720e5240409b3476954?Expires=1734912000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Fcq0rWQJEG1pt8K70JOqTRe~2E9VOV7NDo3EhXVFGdCWkbbwToVoeXR5f5EN5j2jLgBEGJxwKa9TkIIJI7mlRb5SwNvNcYQnjVOTgaQpNBUPMbqqbpi20ZXmo33EYiHn-G8P9vinuVwk6KOwbsGQAji0q4azMqIE2VBHmDM4DvocDQedXh8sX-IhI3-WewYu2AbmiI33zsCm0SGpATFp-bBH2rfAyesioFJ~lrYlu4CXv-bgUXJWfm9UKNmAnDyGrxcwWuKMqWDb8uI0XLFtf8BhF3a5B6lPz3EzSo0mFuEgFSNGUc6xH1MryxqydR~u6HQ-jb-JIBQvCifG8Z~rAA__",
          ),
          Positioned(
            top: 8.h,
            right: 8.w,
            child: IconButton(
                onPressed: () {
                  context.router.push(const ProfileNameAndImageRoute());
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

  Widget aboutUserPart(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Name L.",
                style: body32SemiBoldStyle,
                textAlign: TextAlign.left,
              ),
              8.h.heightBox,
              Row(
                children: [
                  MHTag(
                    title: "0",
                    icon: MoreHandsAssets.icons.starFill.svg(height: 12.r),
                  ),
                  MHTag(
                    title: "0",
                    icon: MoreHandsAssets.icons.hand.svg(height: 12.r),
                  ).paddingSymmetric(horizontal: 6.w),
                  MHTag(
                    title: context.localized.referralsCount(0),
                    icon: MoreHandsAssets.icons.link.svg(height: 12.r),
                  ),
                ],
              ),
            ],
          ).paddingOnly(bottom: 2.h),
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
                      context.router.push(const ProfileContactsRoute());
                    },
                  ),
                ],
              ).paddingOnly(bottom: 2.h),
              Text(
                context.localized.notFilled,
                style: body16Style.copyWith(color: MHColors.grayColor98),
                textAlign: TextAlign.left,
              ),
            ],
          ).paddingOnly(bottom: 24.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localized.whatCanIDo,
                    style: body24SemiBoldStyle,
                    textAlign: TextAlign.left,
                  ),
                  MHInkWell(
                    child: MoreHandsAssets.icons.edit.svg(),
                    onTap: () {
                      context.router.push(const ServicesListRoute());
                    },
                  ),
                ],
              ).paddingOnly(bottom: 2.h),
              Text(
                context.localized.notFilled,
                style: body16Style.copyWith(color: MHColors.grayColor98),
                textAlign: TextAlign.left,
              ),
            ],
          ).paddingOnly(bottom: 24.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.localized.portfolio,
                style: body24SemiBoldStyle,
                textAlign: TextAlign.left,
              ).paddingOnly(bottom: 2.h),
              Text(
                context.localized.notFilled,
                style: body16Style.copyWith(color: MHColors.grayColor98),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      );
}
