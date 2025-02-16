import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/category_model/category_model.dart';
import 'package:more_hands/domain/models/currency_model/currency_model.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/presentation/pages/services/cubit/service_details_cubit/service_details_cubit.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage(
      {super.key, required this.serviceModel, required this.serviceCategory});

  final ServiceModel serviceModel;
  final CategoryModel serviceCategory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServiceDetailsCubit>(
      create: (BuildContext context) =>
          getIt<ServiceDetailsCubit>()..loadData(serviceModel, serviceCategory),
      child: const _ServiceDetailsView(),
    );
  }
}

class _ServiceDetailsView extends StatelessWidget {
  const _ServiceDetailsView();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ServiceDetailsCubit>();

    return BlocConsumer<ServiceDetailsCubit, ServiceDetailsState>(
        listener: (_, state) {
      if (state.validated != null && !state.validated!) {
        context.showSnackBar(message: "Заполните все поля", backgroundColor: MHColors.redColor.withAlpha(90));
      }
      if (state.serviceAdded) {
        // context.router.maybePop(true);
        context.router.popUntilRoot();
      }
    }, builder: (context, state) {
      final selected = state.selectedLocations.map((e) => e.locName).join(",");

      return Scaffold(
        bottomSheet: MHBottomNavigationControl(
          buttonTitle: context.localized.save,
          action: (){
            FocusScope.of(context).unfocus();
            cubit.onSaved();
          } ,
          actionLoading: state.loading,
        ).paddingOnly(bottom: 16.h),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 24.w,
          title: Text(
            context.localized.tellUsMore,
            style: body28SemiBoldStyle,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  state.service?.serviceInfo?.servName ?? "",
                  style: body16MediumStyle,
                ).paddingOnly(bottom: 16.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.router
                              .push(SelectLocationRoute())
                              .then((onValue) {
                            if (onValue != null &&
                                onValue is List<LocationModel>) {
                              cubit.setSelectedLocations(onValue);
                            }
                          });
                        },
                        icon: MoreHandsAssets.icons.plus.svg()),
                    8.w.widthBox,
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                                child: MoreHandsAssets.icons.mapPin
                                    .svg(height: 18.r)
                                    .paddingOnly(right: 4.w)),
                            TextSpan(text: selected, style: body16MediumStyle)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                16.h.heightBox,
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MHTextField(
                      hintText: context.localized.entterPrice,
                      maxLines: 1,
                      controller: cubit.priceController,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                    ).expanded(),
                    8.w.widthBox,
                    PopupMenuButton<CurrencyModel>(
                      tooltip: '',
                      position: PopupMenuPosition.under,
                      onOpened: () {
                        cubit.controller.collapse();
                      },
                      onCanceled: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      onSelected: cubit.changeCurrencyCode,
                      itemBuilder: (context) {
                        return [
                          for (var item in state.currencies) // ["\$", "€", "£", "¥", "₣"])
                            PopupMenuItem<CurrencyModel>(
                              height: 40,
                              value: item,
                              child: Text(item.curSign),
                            ),
                        ];
                      },
                      child: MHRoundedContainer(
                        width: 72.w,
                        height: 56.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.selectedCurrency?.curSign ??
                                 "₽",
                              style: body16MediumStyle,
                            ),
                            8.w.widthBox,
                            MoreHandsAssets.icons.down.svg()
                          ],
                        ).paddingSymmetric(horizontal: 8.w),
                      ),
                    ),
                  ],
                ),
                16.h.heightBox,
                MHRoundedContainer(
                    child: ExpansionTile(
                  controller: cubit.controller,
                  tilePadding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  collapsedShape: InputBorder.none,
                  shape: InputBorder.none,
                  // initiallyExpanded: opened,
                  title: Text(
                    state.selectedMeasure?.name ?? context.localized.select,
                    style: body18Style.copyWith(
                        color: state.selectedMeasure != null
                            ? MHColors.whiteColor
                            : MHColors.grayColor98),
                  ),
                  children: [
                    for (var (i, item) in state.serviceMeasures.indexed)
                      ListTile(
                        onTap: () {
                          cubit.selectedServiceMeasure(item);
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                        shape: i < state.serviceMeasures.length - 1
                            ? const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: MHColors.grayColor))
                            : null,
                        title: Text(
                          item.name ?? "",
                          style: body16MediumStyle,
                        ),
                        trailing: state.selectedMeasure?.id == item.id
                            ? MoreHandsAssets.icons.check.svg()
                            : null,
                      )
                  ],
                )),
                16.h.heightBox,
                MHTextField(
                  hintText: context.localized.description,
                  maxLines: 10,
                  controller: cubit.descriptionController,
                  // minLines: 10,
                ),
                16.h.heightBox,
                Text(
                  context.localized.addPhoto,
                  style: body18SemiBoldStyle,
                ),
                4.h.heightBox,
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4.r,
                      crossAxisSpacing: 4.r),
                  children: [
                    for (var (index, file) in state.selectedFiles.indexed)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          image: DecorationImage(
                              image: FileImage(file), fit: BoxFit.cover),
                        ),
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              cubit.removeFile(index);
                            },
                            style: IconButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            icon: MoreHandsAssets.icons.close.svg(
                                width: 28.0,
                                colorFilter: const ColorFilter.mode(
                                    MHColors.redColor, BlendMode.srcIn))),
                      ),
                    MHImagePicker.multiple(
                        onPicked: cubit.pickedFiles,
                        child: MHRoundedContainer(
                            child: MoreHandsAssets.icons.plusYellow
                                .svg(height: 32.r)))
                  ],
                )
              ],
            ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
          ),
        ),
      );
    });
  }
}
