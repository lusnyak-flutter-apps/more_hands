import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/services/cubit/service_list_cubit/service_list_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ServicesListPage extends StatelessWidget {
  const ServicesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceListCubit>(
      create: (BuildContext context) =>
          getIt<ServiceListCubit>()..findServices(),
      child: const _ServicesListView(),
    );
  }
}

class _ServicesListView extends StatelessWidget {
  const _ServicesListView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ServiceListCubit>();
    return BlocBuilder<ServiceListCubit, ServiceListState>(
        builder: (blocBuilderContext, state) {
      return Scaffold(
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.next,
          action: () {
            if (state.selected != null && state.category != null) {
              context.router.push(ServiceDetailsRoute(
                  serviceModel: state.selected!,
                  serviceCategory: state.category!));
            }
          },
        ).paddingOnly(bottom: 16.h),
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   centerTitle: false,
        //   titleSpacing: 24.w,
        //   title: Text(
        //     context.localized.whatYouCanGiveToTheWorld,
        //     style: body28SemiBoldStyle,
        //     // maxLines: 2,
        //     overflow: TextOverflow.ellipsis,
        //   ),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                context.localized.whatYouCanGiveToTheWorld,
                style: body28SemiBoldStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).paddingOnly(bottom: 8.h),
              MHSearchField(
                hintText: context.localized.search,
                controller: cubit.searchController,
                onEditingComplete: cubit.findServices,
                onClear: cubit.findServices,
              ),
              ListView.builder(
                padding: EdgeInsets.only(bottom: 56.h, top: 16.h),
                itemCount: state.services.length,
                itemBuilder: (itemContext, index) {
                  final vm = state.services[index];
                  final category = vm.category;
                  return ExpansionTile(
                    trailing: state.expanded.contains(index)
                        ? const Icon(Icons.expand_more_rounded)
                        : const Icon(Icons.chevron_right_rounded),
                    onExpansionChanged: (isExpanded) {
                      cubit.onExpansionChanged(index, isExpanded);
                    },
                    initiallyExpanded: state.expanded.contains(index),
                    collapsedShape: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: MHColors.grayColor, width: 1.0),
                    ),
                    title: Text(
                      category?.catName ?? "",
                      style: body16MediumStyle,
                    ),
                    children: [
                      for (var (i, service) in vm.services.indexed)
                        ListTile(
                          onTap: () {
                            cubit.onChangeSelected(service, category);
                          },
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16.w),
                          shape: i < vm.services.length
                              ? const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: MHColors.grayColor))
                              : null,
                          title: Text(
                            service.serviceInfo?.servName ?? "",
                            style: body16MediumStyle,
                          ),
                          trailing: state.selected?.serviceInfo?.servId ==
                                  service.serviceInfo?.servId
                              ? MoreHandsAssets.icons.check.svg()
                              : null,
                        )
                    ],
                  );
                },
              ).expanded()
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
        ),
      );
    });
  }
}
