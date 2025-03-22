import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:more_hands/domain/models/comment_model/comment_model.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';
import 'package:more_hands/utils/extensions/date_time_extension.dart';
import 'package:uikit/uikit.dart';

import '../../core/network/constants/api_constants.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({super.key, required this.comment, this.onReply});

  final CommentModel comment;
  final VoidCallback? onReply;

  @override
  Widget build(BuildContext context) {
    String formattedName =
        "${comment.userFirstName} ${comment.userLastName?.substring(0, 1)}.";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 54.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MHImage(
                size: 52.r,
                imageUrl: comment.profileImageUrl != null
                    ? "${APIBase.url}${comment.profileImageUrl!}"
                    : null,
                emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 36.r),
                availableForegroundDecoration: false,
              ),
              8.w.widthBox,
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(formattedName, style: body22SemiBoldStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarIndicator(
                            itemSize: 16.0,
                            itemPadding: const EdgeInsets.only(right: 2.0),
                            rating: comment.userRelatedRating.toDouble(),
                            itemBuilder: (_, index) {
                              final rate = comment.userRelatedRating.toInt();
                              if (index < rate) {
                                return MoreHandsAssets.icons.starFill.svg(
                                    colorFilter: const ColorFilter.mode(
                                        MHColors.amberColor, BlendMode.srcIn));
                              }
                              return MoreHandsAssets.icons.star.svg();
                            }),
                        Text(comment.createAt?.timeAgoRu() ?? "",
                            style: body14Style),
                      ],
                    ),
                  ]).paddingSymmetric(vertical: 2.0).expanded()
            ],
          ),
        ),
        if (comment.commentText != null && comment.commentText!.isNotEmpty)
          Text(
            comment.commentText ?? "",
            style: body16Style,
          ).paddingOnly(top: 8.h),
        if(comment.replyToCommentId == null)
          MHGradientButton(title: context.localized.answer, onPressed: onReply).paddingSymmetric(vertical: 16.h),
        8.w.widthBox,
       ],
    );
  }
}
