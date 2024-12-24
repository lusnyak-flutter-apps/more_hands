import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.localized.subscriptionInfoText,
            style: body16Style,
            textAlign: TextAlign.left,
          ),
          40.h.heightBox,
          MHRoundedContainer(
              color: MHColors.whiteColor.withOpacity(0.24),
              borderRadius: 24.r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localized.subscribeUntil,
                    style: body20MediumStyle,
                  ).paddingSymmetric(horizontal: 8.w),
                  MHGradientTag(
                    title: "12.12.2024",
                    icon: MoreHandsAssets.icons.hand.svg(
                      colorFilter: const ColorFilter.mode(
                          MHColors.blackBGColor, BlendMode.srcIn),
                    ),
                    iconAlignment: IconAlignment.start,
                  ),
                ],
              ).paddingAll(6.r)),
          24.h.heightBox,
          MHOutlinedButton(
            title: "30 дней за 10 \$",
            onPressed: () {},
          ),
          8.h.heightBox,
          MHOutlinedButton(
            title: "60 дней за 15 \$",
            onPressed: () {},
          ),
          8.h.heightBox,
          MHOutlinedButton(
            title: "120 дней за 20 \$",
            onPressed: () {},
          ),
          8.h.heightBox,
          MHGradientButton(
            title: "1 год за 5 \$ месяц",
            onPressed: () {},
          ),
          24.h.heightBox,
          Text(
            context.localized.inviteFriendsGet1Month,
            style: body16Style,
            textAlign: TextAlign.left,
          ),
          16.h.heightBox,
          MHOutlinedButton(
            title: context.localized.invite,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
