import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/auth/cubit/authorization_cubit.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class TestAuthPage extends StatelessWidget {
  const TestAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthorizationCubit>(
      create: (BuildContext context) => getIt<AuthorizationCubit>(),
      child: const _TestAuthView(),
    );
  }
}

class _TestAuthView extends StatelessWidget {
  const _TestAuthView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthorizationCubit, AuthorizationState>(
      listener: (BuildContext context, AuthorizationState state) {
        state.maybeWhen(
          authorized: () {
            context.router.pushAndPopUntil(const BottomNavigationRoute(),
                predicate: (route) => false);
          },
          unauthorized: () {
            context.showSnackBar(message: 'Unauthorized');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final cubit = context.read<AuthorizationCubit>();
        return Scaffold(
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MoreHandsAssets.images.svg.moreHands
                  .svg(width: 200.w)
                  .toCenter()
                  .expanded(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.localized.autorization,
                    style: body28SemiBoldStyle,
                  ),
                  24.h.heightBox,
                  for (var user in cubit.demoUsers)
                    MHOutlinedButton(
                      onPressed: () {
                        cubit.login(user);
                      },
                      title: user.name,
                      icon: MoreHandsAssets.icons.user.svg(),
                    ).paddingOnly(bottom: 8.h),
                  16.h.heightBox,
                  MHOutlinedButton(
                    onPressed: () {
                      context.router.push(const AuthorizationRoute());
                    },
                    title: "Social login page",
                    icon: MoreHandsAssets.icons.user.svg(),
                  ).paddingOnly(bottom: 8.h),
                  16.h.heightBox,
                  MHTextField(
                    hintText: context.localized.enterInvitation,
                  ),
                ],
              ).paddingSymmetric(horizontal: 24.w, vertical: 40.h)
            ],
          )),
        );
      },
    );
  }
}
