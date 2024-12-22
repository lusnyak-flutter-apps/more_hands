import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/home/cubit/home_cubit.dart';
import 'package:more_hands/presentation/pages/referrals/sub_widgets/referral_item.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (BuildContext context) => getIt<HomeCubit>()..getUsers(),
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
      final (type, users) = state.maybeWhen(
        loaded: (type, users) => (type, [null, null, null]),
        orElse: () => ("All", <dynamic>[]),
      );
      debugPrint(type);
      return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: MHColors.grayColor27.withOpacity(0.6),
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
            "Люди рядом",
            style: body28SemiBoldStyle,
          ),
          centerTitle: false,
          actions: [
            InkWell(
              borderRadius: BorderRadius.circular(24.r),
              child: Row(
                children: [
                  MoreHandsAssets.icons.mapPin.svg(height: 24.r),
                  Text("Москва", style: body16MediumStyle),
                ],
              ).paddingAll(4.r),
              onTap: () {
                context.router.push(const SelectLocationRoute());
              },
            ).paddingOnly(right: 20.w),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(116.h),
            child: Column(
              children: [
                MHSearchField(
                  hintText: context.localized.search,
                  backgroundColor: MHColors.grayColor33Opacity38,
                ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
                SizedBox(
                  height: 38.h,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: [
                        MHTag(
                          title: "All",
                          onPressed: () {
                            cubit.changeType("All");
                          },
                          selected: type == "All",
                        ),
                        for (var item in List.generate(8, (index) => index))
                          MHTag(
                            title: "Service $item",
                            onPressed: () {
                              cubit.changeType("Service $item");
                            },
                            selected: type == "Service $item",
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
          child: _buildReferralsList(
            context,
            users,
          ),
        ),
      );
    });
  }

  Widget _buildReferralsList(BuildContext context, List<dynamic> referrals) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 88.h, top: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...referrals.map((referral) {
            return ReferralItem(
              showInviteButton: true,
              showPortfolio: true,
              onTap: () {
                context.router.push(const UserRoute());
              },
            ).paddingSymmetric(vertical: 8.h);
          }),
        ],
      ),
    ).paddingSymmetric(horizontal: 24.w);
  }
}
