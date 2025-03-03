import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';
import 'package:more_hands/presentation/pages/requests/sub_widgets/incoming_request_tile.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class IncomingRequestsPage extends StatelessWidget {
  const IncomingRequestsPage({super.key, required this.requests});

  final List<RequestModel> requests;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: requests.isNotEmpty ? ListView.separated(
          padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight.h),
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) => IncomingRequestTile(requestModel: requests[index],),
          itemCount: requests.length,
        ).paddingSymmetric(horizontal: 24.w, vertical: 8.h) : const SizedBox.shrink(),
      ),
    );
  }
}
