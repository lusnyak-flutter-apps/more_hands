import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class ReferralItem extends StatelessWidget {
  const ReferralItem({
    super.key,
    this.onTap,
    this.showPortfolio = false,
    this.showInviteButton = false, this.onSendRequest,
  });

  final VoidCallback? onTap;
  final VoidCallback? onSendRequest;
  final bool showPortfolio;
  final bool showInviteButton;

  @override
  Widget build(BuildContext context) {
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
                imageUrl: "https://i.pravatar.cc/150?img=1",
                availableForegroundDecoration: false,
              ),
              16.w.widthBox,
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("John D.", style: body22SemiBoldStyle),
                        4.w.widthBox,
                        MoreHandsAssets.icons.wavyCheckYellow.svg()
                      ],
                    ),
                    8.h.heightBox,
                    Row(
                      children: [
                        MHTag(
                          title: "0",
                          icon:
                              MoreHandsAssets.icons.starFill.svg(height: 12.r),
                        ),
                        MHTag(
                          title: "0",
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
          Text(
            "Организую туры по Бали и по островам Индонезии, помогу с правами, жильем, машиной и прочим бытовыми вопросами",
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
