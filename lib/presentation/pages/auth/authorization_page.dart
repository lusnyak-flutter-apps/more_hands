import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/auth/cubit/authorization_cubit.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthorizationCubit>(
      create: (BuildContext context) => getIt<AuthorizationCubit>(),
      child: const _AuthorizationView(),
    );
  }
}

class _AuthorizationView extends StatelessWidget {
  const _AuthorizationView();

  @override
  Widget build(BuildContext context) {
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
              MHOutlinedButton(
                onPressed: () {},
                title: context.localized.google,
                icon: MoreHandsAssets.icons.google.svg(),
              ),
              8.h.heightBox,
              MHOutlinedButton(
                onPressed: () {},
                title: context.localized.appleId,
                icon: MoreHandsAssets.icons.apple.svg(),
              ),
              8.h.heightBox,
              MHOutlinedButton(
                onPressed: () {},
                title: context.localized.facebook,
                icon: MoreHandsAssets.icons.facebook.svg(),
              ),
              24.h.heightBox,
              const TextField(),
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 40.h)
        ],
      )),
    );
  }
}
