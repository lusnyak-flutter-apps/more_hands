import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/core/router/app_router.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';
import 'package:more_hands/presentation/pages/requests/cubit/requests_cubit.dart';
import 'package:more_hands/utils/extensions/date_time_extension.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class IncomingRequestTile extends StatelessWidget {
  const IncomingRequestTile({super.key, required this.requestModel});

  final RequestModel requestModel;

  @override
  Widget build(BuildContext context) {
    bool isAccepted = requestModel.status == RequestStatus.accepted;
    final imageUrl =  requestModel.profileImageUrl != null
        ? "${APIBase.url}${requestModel.profileImageUrl!}"
        : null;

    final fName = requestModel.userFirstName ?? "";
    final lName = requestModel.userLastName ?? "";

    String formattedName = fName;
    if (lName.isNotEmpty) {
      formattedName += " ${lName.substring(0, 1)}.";
    }
    String dateFormat = requestModel.createDate?.formatDate(format: "dd.MM") ?? "";

     return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              overlayColor: WidgetStatePropertyAll(MHColors.whiteColor.withValues(alpha: 0.01)),
              borderRadius: const  BorderRadius.all(Radius.circular(16.0)),
              onTap: (){
                context.router.push( UserRoute(userId: requestModel.senderId));
              },
              child: MHImage(
                  imageUrl: imageUrl,
                  size: 52.w,
                  availableForegroundDecoration: false),
            ),
            MHTag(
              title: requestModel.senderRating.ceilToDouble().toString(),
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
                  MHGradientText(text: dateFormat,
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
                Text(dateFormat,
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
            InkWell(
               overlayColor: WidgetStatePropertyAll(MHColors.whiteColor.withValues(alpha: 0.01)),
              onTap: (){
                context.router.push( UserRoute(userId: requestModel.senderId));
              },
              child: Text(
                formattedName,
                style: body20SemiBoldStyle,
              ),
            ),
            Text(
              requestModel.rqText ?? "",
              style: body16Style,
            ).paddingSymmetric(vertical: 8.h),
            if (isAccepted)
              MHGradientButton(title: context.localized.leaveAReview,
                  onPressed: () {
                    context.router
                        .push( AddReviewRoute(requestId: requestModel.id, /* userRelatedLogin: requestModel.userRelatedLogin*/));
                  },
                  height: 32.h,
                  verticalPadding: 0,
                  horizontalPadding: 16.w)
              else
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MHOutlinedButton(
                  title: context.localized.reject,
                  onPressed: () {
                    context.read<RequestsCubit>().rejectRequest(requestModel.id).catchError((e) {
                      if(context.mounted) {
                        context.showSnackBar(message: e.toString());
                      }
                    });
                  },
                  style: OutlinedButton.styleFrom(
                      fixedSize: Size.fromHeight(32.h),
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16.w)),
                ),
                8.w.widthBox,
                MHGradientButton(
                  title: context.localized.accept,
                  onPressed: () {
                    context.read<RequestsCubit>().approveRequest(requestModel.id).catchError((e) {
                      if(context.mounted) {
                        context.showSnackBar(message: e.toString());
                      }
                    });
                  },
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
