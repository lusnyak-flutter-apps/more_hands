import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/presentation/pages/send_request/cubit/send_request_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class SendRequestPage extends StatelessWidget {
  const SendRequestPage({super.key, required this.userId, this.serviceModel});

  final int userId;
  final ServiceModel? serviceModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SendRequestCubit>(
      create: (BuildContext context) => getIt<SendRequestCubit>()..setReceiverId(userId),
      child: const _SendRequestView(),
    );
  }
}

class _SendRequestView extends StatelessWidget {
  const _SendRequestView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendRequestCubit, SendRequestState>(
      listener: (context, state) {
        if(state.completed) {
          context.router.maybePop(state.receiverId);
        }
        if(state.haveNoSubscription){
          context.showSnackBar(message: "You have no any subscriptions");
        }
      },
        builder: (context, state) {
      final cubit = context.read<SendRequestCubit>();
      return Scaffold(
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.sendRequest,
          action: cubit.sendRequest,
          actionLoading: state.loading,
        ).paddingOnly(bottom: 16.h),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              MHTextField(
                autofocus: true,
                maxLines: null,
                minLines: 15,
                controller: cubit.controller,
                hintText: context.localized.enterRequestText,
                // minLines: 20,
              ).expanded(),
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 24.h),
        ),
      );
    });
  }
}
