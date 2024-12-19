import 'package:flutter/material.dart';
 import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/referrals/cubit/referrals_cubit.dart';
import 'package:more_hands/presentation/pages/referrals/sub_widgets/referral_item.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ReferralsPage extends StatelessWidget {
  const ReferralsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReferralsCubit>(
      create: (BuildContext context) => getIt<ReferralsCubit>()..getReferrals(),
      child: const _ReferralsView(),
    );
  }
}

class _ReferralsView extends StatelessWidget {
  const _ReferralsView();

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<ReferralsCubit>();

    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.copyAndSend,
        buttonIcon: MoreHandsAssets.icons.link.svg(height: 18.r, colorFilter: ColorFilter.mode(MHColors.blackBGColor, BlendMode.srcIn)),
        action: () {
          // context.router.push(const ProfileContactsRoute());
        },
      ).paddingOnly(bottom: 16.h),
      body: SafeArea(
        child: BlocBuilder<ReferralsCubit, ReferralsState>(
          builder: (_, state) {
            final (code, referrals) = state.maybeWhen(
              loaded: (code, referrals) => ("JFK130064XJ", [null, null, null]),
              orElse: () => ("", <dynamic>[]),
            );
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildReferralCode(context, code),
                24.h.heightBox,
                _buildReferralsList(context, referrals).expanded(),
              ],
            ).paddingSymmetric(horizontal: 24.w, vertical: 16.h);
          },
        ),
      ),
    );
  }

  Widget _buildReferralCode(BuildContext context, String code) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(context.localized.referralCode, style: body28SemiBoldStyle),
        16.h.heightBox,
        Text(context.localized.sendCodeToYourFriends, style: body18MediumStyle),
        16.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(code, style: body24SemiBoldStyle),
            MHInkWell(
              child: MoreHandsAssets.icons.copyYellow.svg(),
              onTap: () {
                debugPrint("Copy the referral code");
                context.read<ReferralsCubit>().copyReferralCode(code).then((_) {
                  debugPrint( context.localized.referralCodeCopied);
                  if (context.mounted) {
                    context.showSnackBar(
                      message: context.localized.referralCodeCopied,
                    );
                  }
                }).catchError((onError){
                  debugPrint(onError.toString());
                }); // Copy the referral code
              },
            )
          ],
        ),
        24.h.heightBox,
        const Divider(),
      ],
    );
  }
  Widget _buildReferralsList(BuildContext context, List<dynamic> referrals) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 56.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(context.localized.yourReferrals,
              style: body28SemiBoldStyle),
          16.h.heightBox,
          ...referrals.map((referral) {
            return const ReferralItem().paddingSymmetric(vertical: 8.h);
          }),
        ],
      ),
    );
  }
}
