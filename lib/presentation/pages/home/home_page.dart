import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/presentation/pages/home/cubit/home_cubit.dart';
import 'package:more_hands/presentation/pages/referrals/sub_widgets/referral_item.dart';
import 'package:more_hands/presentation/widgets/service_info_view.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (BuildContext context) => getIt<HomeCubit>()
        // ..getLocation()
        ..getData(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      final cubit = context.read<HomeCubit>();

      if (state.loading) {}
      // final (type, users) = state.maybeWhen(
      //   loaded: (type, users) => (type, users),
      //   orElse: () => (context.localized.all, <UserModel>[]),
      // );
      // debugPrint(type);
      return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: MHColors.grayColor27.withValues(alpha: 0.6),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(16.r)),
              border: const Border(
                bottom: BorderSide(
                  color: MHColors.grayColor33Opacity38,
                  width: 1.0,
                ),
              ),
            ),
          ),
          title: Text(
            context.localized.peopleAreNearby,
          ),
          centerTitle: false,
          actions: [
            InkWell(
              borderRadius: BorderRadius.circular(24.r),
              child: SizedBox(
                width: 150.w,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MoreHandsAssets.icons.mapPin.svg(height: 24.r),
                    Flexible(
                      child: Text(
                        state.selectedLocation?.locName ?? "",
                        textAlign: TextAlign.right,
                        style: body16MediumStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ).paddingAll(4.r),
              ),
              onTap: () {
                context.router
                    .push(SelectLocationRoute(
                        singleSelect: true,
                        selectedLocationId: state.selectedLocation?.id))
                    .then((onValue) {
                  if (onValue != null &&
                      onValue is List<LocationModel> &&
                      onValue.isNotEmpty) {
                    cubit.setSelectedLocations(onValue.first);
                  }
                });
              },
            ).paddingOnly(right: 20.w),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(116.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MHSearchField(
                  hintText: context.localized.search,
                  backgroundColor: MHColors.grayColor33Opacity38,
                  controller: cubit.searchController,
                  onEditingComplete: () {
                    cubit.onEditComplete();
                    FocusScope.of(context).unfocus();
                  },
                  onClear: () {
                    cubit.onEditComplete();
                    FocusScope.of(context).unfocus();
                  },
                ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
                SizedBox(
                  height: 38.h,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        MHTag(
                          title: context.localized.all,
                          onPressed: () {
                            cubit.changeService(null);
                          },
                          selected: state.selectedServiceId == -1,
                        ),
                        for (var item in state.services)
                          MHTag(
                            title: item.serviceInfo?.servName ?? "",
                            onPressed: () {
                              cubit.changeService(item);
                            },
                            selected: state.selectedServiceId ==
                                item.serviceInfo?.servId,
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: state.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : _buildUsersList(
                  context,
                  state.users,
                ),
        ),
      );
    });
  }

  Widget _buildUsersList(BuildContext context, List<UserModel> users) {
    return RefreshIndicator(
      onRefresh: () {
        return context.read<HomeCubit>().refresh();
      },
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 96.h, top: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...users.map((referral) {
              return ReferralItem(
                showPortfolio: true,
                onTapPortfolioItem: (s) {
                  showServiceView(context,
                      service: s, userId: referral.userInfo!.id);
                },
                onTap: () {
                  context.router.push(UserRoute(userId: referral.userInfo!.id));
                },
                onSendRequest: () {
                  context.router
                      .push(SendRequestRoute(userId: referral.userInfo!.id));
                },
                onLeaveAReview: () {},
                referral: referral,
              ).paddingSymmetric(vertical: 8.h);
            }),
          ],
        ),
      ).paddingSymmetric(horizontal: 24.w),
    );
  }

  Future<void> showServiceView(
    BuildContext context, {
    required ServiceModel service,
    required int userId,
  }) async {
    await showMHScrollModalBottomSheet(
      context,
      title: service.serviceInfo?.servName ?? "",
      child: ServiceInfoView(
        service: service,
        userHasService: false,
      ),
    ).then((onValue) {
      if (onValue is bool) {
        if (context.mounted) {
          context.router
              .push(SendRequestRoute(userId: userId, serviceModel: service));
        }
      }
    });
  }
}
