import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/requests/sub_widgets/incoming_request_tile.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class IncomingRequestsPage extends StatelessWidget {
  const IncomingRequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _IncomingRequestsView();
  }
}

class _IncomingRequestsView extends StatelessWidget {
  const _IncomingRequestsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight.h),
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) =>  IncomingRequestTile(isAccepted: index == 1,),
          itemCount: 3,
        ).paddingSymmetric(horizontal: 24.w, vertical: 8.h),
      ),
    );
  }
}
