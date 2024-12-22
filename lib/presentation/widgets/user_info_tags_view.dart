import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class UserInfoTagsView extends StatelessWidget {
  const UserInfoTagsView({
    super.key,
    this.onReferralsTap,
    this.referralsCount = 0,
    this.starsCount = 0,
    this.transactionsCount = 0,
  });

  final VoidCallback? onReferralsTap;
  final int referralsCount;
  final int starsCount;
  final int transactionsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MHTag(
          title: starsCount.toString(),
          icon: MoreHandsAssets.icons.starFill.svg(height: 12.r),
        ),
        6.w.widthBox,
        MHTag(
          title: context.localized.transactionsCount(transactionsCount),
          icon: MoreHandsAssets.images.svg.hands.svg(
            height: 12.r,
            colorFilter:
                const ColorFilter.mode(MHColors.whiteColor, BlendMode.srcIn),
          ),
        ),
        6.w.widthBox,
        if (onReferralsTap != null)
          MHTag(
            title: context.localized.referralsCount(referralsCount),
            icon: MoreHandsAssets.icons.link.svg(height: 12.r),
            onPressed: onReferralsTap,
          ),
      ],
    );
  }
}
