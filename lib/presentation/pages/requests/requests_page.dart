import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/presentation/pages/bottom_navigation/sub_widgets/mh_bottom_naviagtion_item.dart';
import 'package:more_hands/presentation/pages/requests/cubit/requests_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_tabbar.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

import 'incoming_requests_page.dart';
import 'outgoing_requests_page.dart';

@RoutePage()
class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RequestsCubit>(
      create: (BuildContext context) => getIt<RequestsCubit>()..getRequests(),
      child: const _RequestsView(),
    );
  }
}

class _RequestsView extends StatelessWidget {
  const _RequestsView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestsCubit, RequestsState>(
      builder: (context, state) {
        final cubit = context.read<RequestsCubit>();
        final (filter, section, requests) = (state.selectedStatus, state.selectedType, state.requests);
        final title = section == RequestType.sender
            ? context.localized.outgoingRequests
            : context.localized.incomingRequests;
        return Scaffold(
          appBar: AppBar(
            title: Text(title).paddingOnly(left: 8.w),
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40.h),
              child: Row(
                children: [
                  MHTag(
                    title: context.localized.all,
                    tintColor: MHColors.blackBGColor,
                    borderColor: MHColors.grayColor,
                    onPressed: () {
                      cubit.changeFilter(RequestStatus.all);
                    },
                    selected: filter == RequestStatus.all,
                  ).paddingOnly(right: 8.w),
                  MHTag(
                    title: context.localized.accepts,
                    tintColor: MHColors.blackBGColor,
                    borderColor: MHColors.grayColor,
                    onPressed: () {
                      cubit.changeFilter(RequestStatus.accepted);
                    },
                    selected: filter == RequestStatus.accepted,
                  ).paddingOnly(right: 8.w),
                  MHTag(
                    title: context.localized.waiting,
                    tintColor: MHColors.blackBGColor,
                    borderColor: MHColors.grayColor,
                    onPressed: () {
                      cubit.changeFilter(RequestStatus.new_);
                    },
                    selected: filter == RequestStatus.new_,
                  ).paddingOnly(right: 8.w),
                ],
              ).paddingSymmetric(horizontal: 24.w),
            ),
          ),
          bottomSheet: MHBottomTabbar(
            currentIndex: section.index,
            onTap: cubit.changeSection,
            items: [
              MHBottomNavigationBarItem(
                  label: context.localized.incoming,
                  icon: MoreHandsAssets.icons.chat.svg(height: 20.r),
                  activeIcon: MoreHandsAssets.icons.chatYellow.svg(height: 20.r),
                  index: 0),
              MHBottomNavigationBarItem(
                  label: context.localized.outgoing,
                  icon: MoreHandsAssets.icons.chat.svg(height: 20.r),
                  activeIcon: MoreHandsAssets.icons.chatYellow.svg(height: 20.r),
                  index: 1),
            ],
          ).paddingOnly(bottom: 24.h),
          body: IndexedStack(
            index: section.index,
            children:   [
              IncomingRequestsPage(requests: requests,),
              OutgoingRequestsPage(requests: requests,),
            ],
          ),
        );
      }
    );
  }
}
