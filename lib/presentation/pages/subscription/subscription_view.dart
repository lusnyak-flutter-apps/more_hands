import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/subscription_cubit.dart';

class SubscriptionView extends StatefulWidget {
  const SubscriptionView({super.key});

  @override
  State<SubscriptionView> createState() => _SubscriptionViewState();
}

class _SubscriptionViewState extends State<SubscriptionView> {
  @override
  void initState() {
    super.initState();
    context.read<SubscriptionCubit>().checkSubscriptionStatus();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, SubscriptionState>(
      builder: (context, state) {
        final isActive = state.subscriptionStatus?.isActive ?? false;
        final loading = state.loading;

        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.localized.subscriptionInfoText,
                style: body16Style,
                textAlign: TextAlign.left,
              ),
              40.h.heightBox,
              MHRoundedContainer(
                  color: MHColors.whiteColor.withValues(alpha: 0.24),
                  borderRadius: 24.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.localized.subscribeUntil,
                        style: body20MediumStyle,
                      ).paddingSymmetric(horizontal: 8.w),
                      MHGradientTag(
                        title: "12.12.2024",
                        icon: MoreHandsAssets.icons.hand.svg(
                          colorFilter: const ColorFilter.mode(
                              MHColors.blackBGColor, BlendMode.srcIn),
                        ),
                        iconAlignment: IconAlignment.start,
                      ),
                    ],
                  ).paddingAll(6.r)),
              24.h.heightBox,
              MHOutlinedButton(
                title: "30 дней за 10 \$",
                onPressed: isActive || loading
                    ? null
                    : () => context
                        .read<SubscriptionCubit>()
                        .purchaseSubscription("subscription_1_month"),
              ),
              8.h.heightBox,
              MHOutlinedButton(
                title: "60 дней за 15 \$",
                onPressed: isActive || loading
                    ? null
                    : () => context
                        .read<SubscriptionCubit>()
                        .purchaseSubscription("subscription_3_months"),
              ),
              8.h.heightBox,
              MHOutlinedButton(
                title: "120 дней за 20 \$",
                onPressed: isActive || loading
                    ? null
                    : () => context
                        .read<SubscriptionCubit>()
                        .purchaseSubscription("subscription_3_months"),
              ),
              8.h.heightBox,
              MHGradientButton(
                title: "1 год за 5 \$ месяц",
                onPressed: isActive || loading
                    ? null
                    : () => context
                        .read<SubscriptionCubit>()
                        .purchaseSubscription("subscription_1_year"),
              ),
              24.h.heightBox,
              Text(
                context.localized.inviteFriendsGet1Month,
                style: body16Style,
                textAlign: TextAlign.left,
              ),
              16.h.heightBox,
              MHOutlinedButton(
                title: context.localized.invite,
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
