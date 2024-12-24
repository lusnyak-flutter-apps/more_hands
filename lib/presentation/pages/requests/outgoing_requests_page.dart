import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/requests/sub_widgets/outgoing_request_tile.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class OutgoingRequestsPage extends StatelessWidget {
  const OutgoingRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _OutgoingRequestsView();
  }
}


class _OutgoingRequestsView extends StatelessWidget {
  const _OutgoingRequestsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight.h),
          separatorBuilder: (context, index) => 16.heightBox,
          itemBuilder: (context, index) => OutgoingRequestTile(isAccepted: index == 1,),
          itemCount: 3,
        ).paddingSymmetric(horizontal: 24.w, vertical: 8.h),
      ),
    );
  }
}
