import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/pages/location/cubit/select_location_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class SelectLocationPage extends StatelessWidget {
  const SelectLocationPage({super.key,  this.singleSelect = false,  this.selectedLocationId});
  final bool singleSelect;
  final int? selectedLocationId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectLocationCubit>(
      create: (BuildContext context) =>
          getIt<SelectLocationCubit>()..findClosestLocations(singleSelect: singleSelect, initialSelected: selectedLocationId),
      child: const _SelectLocationView(),
    );
  }
}

class _SelectLocationView extends StatelessWidget {
  const _SelectLocationView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SelectLocationCubit>();
    return BlocBuilder<SelectLocationCubit, SelectLocationState>(
        builder: (context, state) {
      // final selected = state.selectedLocations.map((e) => e.locName).join(",");
      return Scaffold(
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.select,
          action: () {
            if(state.selectedLocations.isNotEmpty) {
              context.router.maybePop(state.selectedLocations);
            } else {
              context.showSnackBar(message: "Нет выбранных местоположений");
            }
          },
        ).paddingOnly(bottom: 16.h),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 24.w,
          title: Text(
            context.localized.selectLocation,
            style: body28SemiBoldStyle,
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MHSearchField(
                hintText: context.localized.search,
              ),
              8.w.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: cubit.findMe,
                    icon: MoreHandsAssets.icons.compass.svg(height: 18.r),
                    style: TextButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 8.0), overlayColor: MHColors.whiteColor),
                    label: Text(
                      state.myLocation != null ?
                      "${context.localized.findMe}: ${state.myLocation?.locName}" : context.localized.findMe,
                       style: body16MediumStyle,
                    )),
              ),
              // RichText(
              //   textAlign: TextAlign.left,
              //   text: TextSpan(
              //     children: [
              //       WidgetSpan(
              //           child: MoreHandsAssets.icons.compass
              //               .svg(height: 18.r)
              //               .paddingOnly(right: 4.w)),
              //       TextSpan(text: "Найти меня", style: body16MediumStyle)
              //     ],
              //   ),
              // ),
              ListView.separated(
                padding: EdgeInsets.only(
                    bottom: kBottomNavigationBarHeight.h, top: 8.h),
                separatorBuilder: (context, index) => const Divider(
                  color: MHColors.grayColor,
                  // height: 1,
                ),
                itemBuilder: (itemContext, index) {
                  final value = state.locations[index];
                  return ListTile(
                    onTap: () {
                      cubit.selectLocation(value);
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                    // shape: const UnderlineInputBorder(
                    //     borderSide: BorderSide(color: MHColors.grayColor)),
                    title: Text(
                      value.locName ?? "",
                      style: body16MediumStyle,
                    ),
                    trailing: state.selectedLocations
                            .map((e) => e.id)
                            .contains(value.id)
                        ? MoreHandsAssets.icons.check.svg()
                        : null,
                  );
                },
                itemCount: state.locations.length,
              ).expanded()
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
        ),
      );
    });
  }
}
