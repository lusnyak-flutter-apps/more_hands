import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class OutgoingRequestTile extends StatelessWidget {
  const OutgoingRequestTile({super.key, this.isAccepted = false});

  final bool isAccepted;

  @override
  Widget build(BuildContext context) {
    final mainChild =   Stack(
      children: [
        MHRoundedContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MHImage(
                    imageUrl: 'https://i.pravatar.cc/300?img=1',
                    size: 28.w,
                    borderRadius: 8.0,
                    availableForegroundDecoration: false,
                  ),
                  8.w.widthBox,
                  Text("Name L.", style: body20SemiBoldStyle)
                ],
              ),
              Row(
                children: [
                  MoreHandsAssets.icons.user.svg(),
                  8.w.widthBox,
                  MHTag(
                    title: "4.4",
                    icon: MoreHandsAssets.icons.starFill.svg(),
                  ).paddingSymmetric(vertical: 4.h),
                ],
              )
            ],
          ).paddingAll(10.w),
        ),
        MHRoundedContainer(
          color: MHColors.grayColor27,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Здравствуйте! Ищу мастера по стиральным машинам, увидел у вас в списке услуг. У меня проблема. Примите запрос, если сможете помочь.",
                style: body14Style,
              ),
              8.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isAccepted)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MoreHandsAssets.icons.checkCircle.svg(
                            height: 14.r,
                            colorFilter: const ColorFilter.mode(
                                MHColors.yellowColor, BlendMode.srcIn)),
                        2.w.widthBox,
                        MHGradientText(
                            text: context.localized.accepted,
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
                        Text(context.localized.pending,
                            style: body12MediumStyle.copyWith(
                                color: MHColors.grayColor98)),
                      ],
                    ),
                  Text("30.06",
                      style: body12MediumStyle.copyWith(
                          color: MHColors.grayColor98)),
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 16.w, vertical: 8.h),
        ).paddingOnly(top: 46.h),
      ],
    );

    return isAccepted ? Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        mainChild,
        8.h.heightBox,
        MHGradientButton(
          title: context.localized.leaveAReview,
          onPressed: () {},
          // height: 32.h,
          // verticalPadding: 0,
          // horizontalPadding: 16.w,
        ),
      ],
    ) : mainChild;
  }
}
