import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class IncomingRequestTile extends StatelessWidget {
  const IncomingRequestTile({super.key, this.isAccepted = false});

  final bool isAccepted;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MHImage(
                imageUrl: "https://i.pravatar.cc/300?img=1",
                size: 52.w,
                availableForegroundDecoration: false),
            MHTag(
              title: "4.8",
              icon: MoreHandsAssets.icons.starFill.svg(),
            ).paddingSymmetric(vertical: 4.h),
            if (isAccepted)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MoreHandsAssets.icons.checkCircle.svg(
                      height: 14.r,
                      colorFilter: const ColorFilter.mode(
                          MHColors.yellowColor, BlendMode.srcIn)),
                  2.w.widthBox,
                  MHGradientText(text: "30.06",
                      style: body12MediumStyle),
                ],
              )
            else
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MoreHandsAssets.icons.clock.svg(
                    height: 14.r,
                    colorFilter: const ColorFilter.mode(
                        MHColors.grayColor98, BlendMode.srcIn)),
                2.w.widthBox,
                Text("30.06",
                    style: body12MediumStyle.copyWith(
                        color: MHColors.grayColor98)),
              ],
            ),
            if (isAccepted)
              MHGradientText(text: context.localized.accepted,
                  style: body12MediumStyle)
                  .paddingSymmetric(vertical: 4.h)
            else
            Text(context.localized.pending,
                    style:
                        body12MediumStyle.copyWith(color: MHColors.grayColor98))
                .paddingSymmetric(vertical: 4.h),
          ],
        ),
        8.w.widthBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Name L.",
              style: body20SemiBoldStyle,
            ),
            Text(
              "Здравствуйте! Ищу мастера по стиральным машинам, увидел у вас в списке услуг. У меня проблема. Примите запрос, если сможете помочь.",
              style: body16Style,
            ).paddingSymmetric(vertical: 8.h),
            if (isAccepted)
              MHGradientButton(title: context.localized.leaveAReview,
                  onPressed: () {},
                  height: 32.h,
                  verticalPadding: 0,
                  horizontalPadding: 16.w)
              else
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MHOutlinedButton(
                  title: context.localized.reject,
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      fixedSize: Size.fromHeight(32.h),
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16.w)),
                ),
                8.w.widthBox,
                MHGradientButton(
                  title: context.localized.accept,
                  onPressed: () {},
                  height: 32.h,
                  verticalPadding: 0,
                  horizontalPadding: 16.w,
                ),
              ],
            )
          ],
        ).expanded()
      ],
    ).paddingSymmetric(vertical: 16.h);
  }
}
