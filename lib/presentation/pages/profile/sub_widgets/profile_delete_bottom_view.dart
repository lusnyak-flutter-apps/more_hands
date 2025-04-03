import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:more_hands/utils/extensions/date_time_extension.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class ProfileDeleteBottomView extends StatelessWidget {
  const ProfileDeleteBottomView({super.key, this.onDeleted, this.subscribeUntil});

  final VoidCallback? onDeleted;
  final DateTime? subscribeUntil;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.localized.allInfoWillBeDeleted,
            style: body16Style,
            textAlign: TextAlign.left,
          ),
          40.h.heightBox,
          MHRoundedContainer(
              color: MHColors.whiteColor.withValues(alpha: 0.24),
              borderRadius: 24.r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localized.subscribeUntil,
                    style: body20MediumStyle,
                  ).paddingSymmetric(horizontal: 8.w),
                  MHGradientTag(
                    title: subscribeUntil?.formatDate() ?? "",
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
            title: context.localized.deleteProfile,
            onPressed: () {
              context.router.maybePop();
              onDeleted?.call();
            },
          ),
          16.h.heightBox,
          MHGradientButton(
            title: context.localized.cancel,
            onPressed: context.router.maybePop,
          )
        ],
      ),
    );
  }
}
