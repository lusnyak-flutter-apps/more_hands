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
    context.read<SubscriptionCubit>()
      ..checkSubscriptionStatus()
      ..loadAvailableSubscriptions();
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
                        title: "12.12.2025",
                        icon: MoreHandsAssets.icons.hand.svg(
                          colorFilter: const ColorFilter.mode(
                            MHColors.blackBGColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        iconAlignment: IconAlignment.start,
                      ),
                    ],
                  ).paddingAll(6.r)),
              24.h.heightBox,
              if (state.availableSubscriptions.isEmpty)
                Center(
                  child: Text(
                    'Нет доступных подписок',
                    //context.localized.noSubscriptionsAvailable,
                    style: body16Style,
                    textAlign: TextAlign.center,
                  ),
                )
              else
                ...state.availableSubscriptions.map(
                  (subscription) => Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: MHOutlinedButton(
                      title:
                          "${subscription.title} за ${subscription.price}${subscription.currencySymbol}",
                      onPressed: isActive || loading
                          ? null
                          : () => context
                              .read<SubscriptionCubit>()
                              .purchaseSubscription(subscription.id),
                    ),
                  ),
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
