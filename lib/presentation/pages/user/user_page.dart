import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/contact_type.dart';
import 'package:more_hands/domain/models/comment_model/comment_model.dart';
import 'package:more_hands/domain/models/last_req_info_model/last_req_info_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/user/cubit/user_cubit.dart';
import 'package:more_hands/presentation/widgets/comment_tile.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/presentation/widgets/portfolio_view.dart';
import 'package:more_hands/presentation/widgets/service_info_view.dart';
import 'package:more_hands/presentation/widgets/user_contacts_view.dart';
import 'package:more_hands/presentation/widgets/user_info_tags_view.dart';
import 'package:more_hands/presentation/widgets/user_name_id_view.dart';
import 'package:more_hands/presentation/widgets/what_can_do_view.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (BuildContext context) => getIt<UserCubit>()..loadUser(userId)..getComments(),
      child: const _UserView(),
    );
  }
}

class _UserView extends StatefulWidget {
  const _UserView();

  @override
  State<_UserView> createState() => _UserViewState();
}

class _UserViewState extends State<_UserView> {
  void onLeaveAReview(String? userLogin) {
    if (userLogin != null) {
      context.router.push(AddReviewRoute(userRelatedLogin: userLogin));
    }
  }

  void onSendRequest(int? userId) {
    if (userId != null) {
      final cubit = context.read<UserCubit>();
      context.router.push(SendRequestRoute(userId: userId)).then((onValue) {
        if (onValue is bool && onValue) {
          cubit.loadUser(userId);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(builder: (context, state) {
      final loading = state.loading;
      final user = state.user;
      List<PortfolioItem> portfolio = [];
      // List<String> cats = <String>[];
      user?.services.forEach((s) {
        portfolio.addAll(s.files.mapIndexed(
            ((i, f) => PortfolioItem(service: s, file: f, isMain: i == 0))));
      });

      String? buttonTitle =
          actionButtonTitleByLastRequests(context, user?.lastReqInfo);
      String? actionKey = actionByLastRequests(user?.lastReqInfo);
      return Scaffold(
        bottomSheet: buttonTitle != null
            ? MHBottomNavigationControl(
                buttonTitle: user?.userInfo?.shaken == true
                    ? context.localized.leaveAReview
                    : buttonTitle,
                action: user?.userInfo?.shaken == true
                    ? () => onLeaveAReview(user?.userInfo?.userLogin)
                    : actionKey == sendRequest
                        ? () => onSendRequest(user?.userInfo?.id)
                        : actionKey == leaveAReview
                            ? () => onLeaveAReview(user?.userInfo?.userLogin)
                            : null,
              ).paddingOnly(bottom: 16.h)
            : null,
        body: SafeArea(
          bottom: false,
          child: loading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  padding: EdgeInsets.only(
                      top: 24.h, bottom: 2 * kBottomNavigationBarHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      userImagePart(context, user!).paddingOnly(bottom: 24.h),
                      aboutUserPart(context, user).paddingOnly(bottom: 24.h),
                      WhatCanDoView(
                        items: user.services,
                      ).paddingOnly(bottom: 24.h),
                      PortfolioView(
                        items: portfolio,
                        onTapItem: (index) {
                          debugPrint("Portfolio item $index");
                          showServiceView(
                            context,
                            service: index.service,
                            user: user,
                            lastReqInfo: user.lastReqInfo,
                          );
                        },
                      ).paddingOnly(bottom: 24.h),
                      if (state.comments.isNotEmpty)
                        buildCommentsList(context, state.comments),
                    ],
                  ).paddingSymmetric(horizontal: 24.w),

                ),
        ),
      );
    });
  }

  Widget buildCommentsList(BuildContext context, List<CommentModel> comments) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          context.localized.reviewsCount(comments.length),
          style: body24SemiBoldStyle,
          textAlign: TextAlign.left,
        ).paddingSymmetric(vertical: 8.h),
        for (var comment in comments)
          CommentTile(
            comment: comment,
          ),
      ],
    );
  }


  Widget userImagePart(BuildContext context, UserModel user) => MHImage(
      size: context.width,
      emptyWidget: MoreHandsAssets.icons.userYellow.svg(height: 130.r),
      imageUrl: user.userInfo?.profileImageUrl != null
          ? "${APIBase.url}${user.userInfo!.profileImageUrl!}"
          : null);

  Widget aboutUserPart(BuildContext context, UserModel user) {
    String formattedName =
        "${user.userInfo?.firstName} ${user.userInfo?.lastName?.substring(0, 1)}.";
    String bio = user.userInfo?.bio ?? "";

    List<ContactItem> contacts = <ContactItem>[];
    if (user.userInfo?.instagramLink != null &&
        user.userInfo!.instagramLink!.isNotEmpty) {
      contacts.add(ContactItem(
          type: ContactType.instagram,
          name: user.userInfo!.instagramLink!,
          icon: MoreHandsAssets.icons.instagram.svg()));
    }
    if (user.userInfo?.whatsappLink != null &&
        user.userInfo!.whatsappLink!.isNotEmpty) {
      contacts.add(ContactItem(
          type: ContactType.whatsApp,
          name: user.userInfo!.whatsappLink!,
          icon: MoreHandsAssets.icons.whatsapp.svg()));
    }
    if (user.userInfo?.facebookLink != null &&
        user.userInfo!.facebookLink!.isNotEmpty) {
      contacts.add(ContactItem(
          type: ContactType.facebook,
          name: user.userInfo!.facebookLink!,
          icon: MoreHandsAssets.icons.facebook.svg()));
    }
    if (user.userInfo?.telegramLink != null &&
        user.userInfo!.telegramLink!.isNotEmpty) {
      contacts.add(ContactItem(
          type: ContactType.telegram,
          name: user.userInfo!.telegramLink!,
          icon: MoreHandsAssets.icons.telegram.svg()));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        UserNameIdView(
          name: formattedName,
          id: user.userInfo?.id.toString(),
        ),
        8.h.heightBox,
        UserInfoTagsView(
          starsCount: user.userInfo?.userRating.toDouble() ?? 0.0,
          transactionsCount: user.userInfo?.dealCountSpend.toInt() ?? 0,
          referralsCount: user.userInfo?.refCount.toInt() ?? 0,
        ).paddingOnly(bottom: 8.h),
        if (user.userInfo?.shaken != true)
          _buildSendCodeToFriends(context, userId: user.userInfo!.id)
              .paddingOnly(bottom: 8.h),
        if (contacts.isNotEmpty && user.userInfo?.shaken == true)
          UserContactsView(
            contacts: contacts,
          ).paddingOnly(bottom: 8.h),
        if (bio.isNotEmpty)
          Text(
            bio,
            style: body16Style,
            textAlign: TextAlign.left,
          ).paddingOnly(bottom: 2.h)
      ],
    );
  }

  Widget _buildSendCodeToFriends(BuildContext context, {required int userId}) =>
      InkWell(
        borderRadius: BorderRadius.circular(16.r),
        onTap: () {
          debugPrint("Send code to your friends 1");
          context.router.push(SendRequestRoute(userId: userId));
        },
        child: MHRoundedContainer(
          color: MHColors.blackBGColor.withValues(alpha: 0.5),
          borderGradientColors: const [
            MHColors.yellowColor,
            MHColors.amberColor,
          ],
          child: Row(
            children: [
              MHCircleGradientContainer(
                size: 32.r,
                child: MoreHandsAssets.icons.wavyHelp.svg(
                  colorFilter: const ColorFilter.mode(
                      MHColors.blackBGColor, BlendMode.srcIn),
                ),
              ),
              8.w.widthBox,
              Flexible(
                child: Text(
                  context.localized.sendRequestToSeeContacts,
                  maxLines: 2,
                  style: body16Style,
                ),
              ),
            ],
          ).paddingAll(4.r),
        ),
      );

  Future<void> showServiceView(
    BuildContext context, {
    required ServiceModel service,
    required UserModel user,
    required LastReqInfoModel? lastReqInfo,
  }) async {
    await showMHScrollModalBottomSheet(
      context,
      title: service.serviceInfo?.servName ?? "",
      child: ServiceInfoView(
        service: service,
         user: user,
      ),
    ).then((onValue) {
      if (onValue is String  && context.mounted) {
        if (onValue == sendRequest && user.userInfo?.id != null) {
          context.router
              .push(SendRequestRoute(userId: user.userInfo!.id, serviceModel: service));
        }
        if (onValue == leaveAReview &&  user.userInfo?.userLogin != null) {
          context.router
              .push( AddReviewRoute(userRelatedLogin: user.userInfo?.userLogin));
        }
      }
    });
  }
}
