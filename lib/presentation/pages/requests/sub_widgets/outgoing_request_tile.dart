import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';
import 'package:more_hands/presentation/pages/requests/cubit/requests_cubit.dart';
import 'package:more_hands/utils/extensions/date_time_extension.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class OutgoingRequestTile extends StatelessWidget {
  const OutgoingRequestTile({super.key, required this.requestModel});

  // final bool isAccepted;
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

    String dateFormat =
        requestModel.createDate?.formatDate(format: "dd.MM") ?? "";

    final mainChild =   Slidable(

      key: ValueKey(requestModel.id),
      endActionPane: ActionPane(motion: const BehindMotion(), extentRatio: 0.15, children: [
        SlidableAction(
          onPressed: (c){
            context.read<RequestsCubit>().cancelRequest(requestModel.id).catchError((e) {
              if(context.mounted) {
                context.showSnackBar(message: e.toString());
              }
            });
          },
          backgroundColor: MHColors.darkRedColor,
          foregroundColor:  MHColors.whiteColor,
          icon: Icons.delete_outline_rounded,
          borderRadius: const BorderRadius.horizontal(right: Radius.circular(16.0)),
          padding: const EdgeInsets.all(8.0),
         ),
      ]),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          MHRoundedContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MHImage(
                      imageUrl: imageUrl,
                      size: 28.w,
                      borderRadius: 8.0,
                      availableForegroundDecoration: false,
                    ),
                    8.w.widthBox,
                    Text(formattedName, style: body20SemiBoldStyle)
                  ],
                ),
                Row(
                  children: [
                    MoreHandsAssets.icons.user.svg(),
                    8.w.widthBox,
                    MHTag(
                      title: requestModel.userRating.toString(),
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
                  requestModel.rqText ?? "",
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
                    Text(dateFormat,
                        style: body12MediumStyle.copyWith(
                            color: MHColors.grayColor98)),
                  ],
                )
              ],
            ).paddingSymmetric(horizontal: 16.w, vertical: 8.h),
          ).paddingOnly(top: 46.h),
        ],
      ),
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
