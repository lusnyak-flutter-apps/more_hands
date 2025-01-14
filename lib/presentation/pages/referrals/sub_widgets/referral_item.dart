import 'package:flutter/material.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class ReferralItem extends StatelessWidget {
  const ReferralItem({
    super.key,
    this.onTap,
    this.showPortfolio = false,
    this.showInviteButton = false, this.onSendRequest, required this.referral,
  });

  final VoidCallback? onTap;
  final VoidCallback? onSendRequest;
  final bool showPortfolio;
  final bool showInviteButton;
  final UserModel referral;

  @override
  Widget build(BuildContext context) {

    String formattedName =
        "${referral.userInfo?.firstName} ${referral.userInfo?.lastName?.substring(0, 1)}.";

    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MHImage(
                size: 128.r,
                imageUrl: referral.userInfo?.profileImageUrl != null ?  "${APIBase.url}${referral.userInfo!.profileImageUrl!}" : null,
             emptyWidget:    MoreHandsAssets.icons.userYellow.svg(height: 64.r),
                availableForegroundDecoration: false,
              ),
              16.w.widthBox,
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(formattedName, style: body22SemiBoldStyle),
                        4.w.widthBox,
                        MoreHandsAssets.icons.wavyCheckYellow.svg()
                      ],
                    ),
                    8.h.heightBox,
                    Row(
                      children: [
                        MHTag(
                          title: referral.userInfo?.userRating.toString() ?? "0",
                          icon:
                              MoreHandsAssets.icons.starFill.svg(height: 12.r),
                        ),
                        MHTag(
                          title: referral.userInfo?.dealCountSpend.toString() ?? "0" ,
                          icon: MoreHandsAssets.images.svg.hands.svg(
                              height: 12.r,
                              colorFilter: const ColorFilter.mode(
                                  MHColors.whiteColor, BlendMode.srcIn)),
                        ).paddingSymmetric(horizontal: 6.w),
                      ],
                    ),
                    8.h.heightBox,
                    Wrap(
                      spacing: 4.w,
                      runSpacing: 4.h,
                      children: [
                        for (int i = 0; i < 2; i++)
                          const MHTag(
                            title: "User Tag",
                            tintColor: MHColors.darkGrayColor,
                            borderColor: MHColors.grayColor,
                          )
                      ],
                    ),
                  ]).expanded()
            ],
          ),
          if(referral.userInfo?.bio != null)
          Text(
            referral.userInfo?.bio ?? "",
            style: body16Style,
          ).paddingSymmetric(vertical: 16.h),
          if(showPortfolio)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(context.localized.portfolio, style: body14SemiBoldStyle, textAlign: TextAlign.left),
                8.h.heightBox,
                SizedBox(
                  height: 80.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        for (int i = 0; i < 10; i++)
                          MHImage(
                            size: 80.r,
                            imageUrl: "https://i.pravatar.cc/150?img=1",
                            availableForegroundDecoration: false,
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          if(showInviteButton)
            MHGradientButton(
              title: context.localized.sendRequest,
              onPressed: onSendRequest,
            ).paddingOnly(top: 16.h)
        ],
      ),
    );
  }
}
