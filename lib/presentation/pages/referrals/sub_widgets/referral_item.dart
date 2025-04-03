
import 'package:flutter/material.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/domain/models/last_comment_info/last_comment_info_model.dart';
import 'package:more_hands/domain/models/last_req_info_model/last_req_info_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/widgets/portfolio_view.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class ReferralItem extends StatelessWidget {
  const ReferralItem({
    super.key,
    this.onTap,
    this.showPortfolio = false,
    this.onSendRequest,
    required this.referral,
    this.onTapPortfolioItem,
    this.onReviewAction,
  });

  final VoidCallback? onTap;
  final Function(ServiceModel)? onTapPortfolioItem;
  final VoidCallback? onSendRequest;
  final Function(ReviewActionType)? onReviewAction;
  final bool showPortfolio;
  final UserModel referral;

  @override
  Widget build(BuildContext context) {
    String formattedName =
        "${referral.userInfo?.firstName} ${referral.userInfo?.lastName?.substring(0, 1)}.";

    List<PortfolioItem> portfolio = [];
    for (var s in referral.services) {
      portfolio.addAll(s.files.map((f) => PortfolioItem(service: s, file: f)));
    }

    String bio = referral.userInfo?.bio ?? "";
    if (bio.length > 200) {
      bio = "${bio.substring(0, 199)}...";
    }
    String? buttonTitle =
        actionButtonTitleByLastRequests(context, referral.lastReqInfo);
    String? actionKey = actionByLastRequests(referral.lastReqInfo);

    debugPrint(buttonTitle);
    debugPrint(actionKey);

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
                imageUrl: referral.userInfo?.profileImageUrl != null
                    ? "${APIBase.url}${referral.userInfo!.profileImageUrl!}"
                    : null,
                emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 64.r),
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
                          title: referral.userInfo?.userRating
                                  .toStringAsFixed(1) ??
                              "0",
                          icon:
                              MoreHandsAssets.icons.starFill.svg(height: 12.r),
                        ),
                        MHTag(
                          title: referral.userInfo?.dealCountSpend.toString() ??
                              "0",
                          icon: MoreHandsAssets.images.svg.hands.svg(
                              height: 12.r,
                              colorFilter: const ColorFilter.mode(
                                  MHColors.whiteColor, BlendMode.srcIn)),
                        ).paddingSymmetric(horizontal: 6.w),
                      ],
                    ),
                    if (referral.services.isNotEmpty)
                      Wrap(
                        spacing: 4.w,
                        runSpacing: 4.h,
                        children: [
                          for (var item in referral.services)
                            MHTag(
                              title: item.serviceInfo?.servName ?? "",
                              tintColor: MHColors.darkGrayColor,
                              borderColor: MHColors.grayColor,
                            )
                        ],
                      ).paddingOnly(top: 8.h),
                  ]).expanded()
            ],
          ),
          if (bio.isNotEmpty)
            Text(
              bio,
              style: body16Style,
            ).paddingSymmetric(vertical: 16.h),
          if (showPortfolio && portfolio.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(context.localized.portfolio,
                    style: body14SemiBoldStyle, textAlign: TextAlign.left),
                8.h.heightBox,
                SizedBox(
                  height: 80.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        for (var item in portfolio)
                          InkWell(
                            onTap: () {
                              onTapPortfolioItem?.call(item.service);
                            },
                            child: MHImage(
                              size: 80.r,
                              imageUrl: item.filePath,
                              availableForegroundDecoration: false,
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          if (referral.userInfo?.shaken == true)
            buildReviewButton(context)
          else if (actionKey == waitingForAResponse || actionKey == requestSent)
            MHOutlinedButton(
              title: buttonTitle ?? "",
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  foregroundColor: MHColors.whiteColor),
            ).paddingOnly(top: 16.h)
          else if (actionKey == leaveAReview && onReviewAction != null)
            buildReviewButton(context)
          else if (actionKey == sendRequest && onSendRequest != null)
            MHGradientButton(
              title: context.localized.sendRequest,
              onPressed: onSendRequest,
            ).paddingOnly(top: 16.h)
        ],
      ),
    );
  }

  Widget buildReviewButton(BuildContext context) => MHGradientButton(
        title: actionByLastCommentInfo(referral.lastCommentInfo).title(context),
        onPressed: () {
          onReviewAction
              ?.call(actionByLastCommentInfo(referral.lastCommentInfo));
        },
      ).paddingOnly(top: 16.h);
}
