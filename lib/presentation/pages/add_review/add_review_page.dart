import 'package:flutter/material.dart';
import 'package:more_hands/presentation/pages/add_review/cubit/add_review_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';
import 'package:uikit/uikit.dart';

import '../../../core/core.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

@RoutePage()
class AddReviewPage extends StatelessWidget {
  const AddReviewPage({
    super.key,
    this.replyToCommentId,
    this.requestId,
    this.userRelatedLogin,
  });

  final int? replyToCommentId;
  final int? requestId;
  final String? userRelatedLogin;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddReviewCubit>(
      create: (BuildContext context) => getIt<AddReviewCubit>()
        ..setupData(
            replyToCommentId: replyToCommentId,
            requestId: requestId,
            userRelatedLogin: userRelatedLogin),
      child: replyToCommentId != null
          ? const _AnswerReviewPage()
          : const _AddReviewPage(),
    );
  }
}

class _AddReviewPage extends StatelessWidget {
  const _AddReviewPage();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddReviewCubit, AddReviewState>(
        listener: (context, state) {
      if (state.completed) {
        context.router.maybePop(true);
      }
    }, builder: (context, state) {
      final cubit = context.read<AddReviewCubit>();
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            context.localized.leaveAReview,
          ),
          centerTitle: false,
        ),
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.leaveAReview,
          action: cubit.onLeaveReview,
          actionLoading: state.loading,
        ).paddingOnly(bottom: 16.h),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              RatingBar.builder(
                initialRating: state.rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.w),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: MHColors.amberColor,
                ),
                onRatingUpdate: cubit.onRatingUpdate,
              ).paddingSymmetric(vertical: 16.r),
              MHTextField(
                autofocus: true,
                maxLines: null,
                minLines: 15,
                controller: cubit.controller,
                hintText: context.localized.enterText,
                // minLines: 20,
              ).expanded(),
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 24.h),
        ),
      );
    });
  }
}

class _AnswerReviewPage extends StatelessWidget {
  const _AnswerReviewPage();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddReviewCubit, AddReviewState>(
        listener: (context, state) {
      if (state.completed) {
        context.router.maybePop(true);
      }
    }, builder: (context, state) {
      final cubit = context.read<AddReviewCubit>();
      return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            MHTextField(
              autofocus: true,
              maxLines: null,
              minLines: 15,
              controller: cubit.controller,
              hintText: context.localized.enterText,
            ).expanded(),
            MHBottomNavigationControl(
              buttonTitle: context.localized.leaveAReview,
              action: cubit.onLeaveReview,
              actionLoading: state.loading,
              horizontalSpacing: 0,
            ).paddingOnly(
                bottom: MediaQuery.of(context).viewInsets.bottom, top: 8.h),
          ],
        ),
      );
    });
  }
}
