import 'dart:io';

import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/presentation/widgets/mh_bottom_navigation_control.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

@RoutePage()
class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ServiceDetailsView();
  }
}

class _ServiceDetailsView extends StatefulWidget {
  const _ServiceDetailsView();

  @override
  State<_ServiceDetailsView> createState() => _ServiceDetailsViewState();
}

class _ServiceDetailsViewState extends State<_ServiceDetailsView> {
  String? selected;
  String? selectedCurrency;
  List<File> selectedFiles = <File>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MHBottomNavigationControl(
        buttonTitle: context.localized.save,
        action: () {},
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
                "Service title",
                style: body16MediumStyle,
              ).paddingOnly(bottom: 16.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        context.router.push(const SelectLocationRoute());
                      }, icon: MoreHandsAssets.icons.plus.svg()),
                  8.w.widthBox,
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                            child: MoreHandsAssets.icons.mapPin
                                .svg(height: 18.r)
                                .paddingOnly(right: 4.w)),
                        TextSpan(text: "Location", style: body16MediumStyle)
                      ],
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
                  ).expanded(),
                  8.w.widthBox,
                  PopupMenuButton<String>(
                    tooltip: '',
                    // padding: EdgeInsets.zero,
                    position: PopupMenuPosition.under,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    onSelected: (menu) {
                      if (mounted) {
                        setState(() {
                          selectedCurrency = menu;
                        });
                      }
                    },
                    itemBuilder: (context) {
                      return [
                        for (var item in ["\$", "€", "£", "¥", "₣"])
                          PopupMenuItem<String>(
                            height: 40,
                            value: item,
                            child: Text(item),
                          ),
                      ];
                    },
                    child: MHRoundedContainer(
                      width: 64.w,
                      height: 56.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedCurrency ?? "\$",
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
                tilePadding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                collapsedShape: InputBorder.none,
                shape: InputBorder.none,
                title: Text(
                  selected ?? context.localized.select,
                  style: body18Style.copyWith(
                      color: selected != null
                          ? MHColors.whiteColor
                          : MHColors.grayColor98),
                ),
                children: [
                  for (var i = 0; i < 4; i++)
                    ListTile(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            selected = "Title $i";
                          });
                        }
                      },
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                      shape: i < 3
                          ? const UnderlineInputBorder(
                              borderSide: BorderSide(color: MHColors.grayColor))
                          : null,
                      title: Text(
                        "Title $i",
                        style: body16MediumStyle,
                      ),
                      trailing: selected == "Title $i"
                          ? MoreHandsAssets.icons.check.svg()
                          : null,
                    )
                ],
              )),
              16.h.heightBox,
              MHTextField(
                hintText: context.localized.description,
                maxLines: 10,
                // minLines: 10,
              ),
              16.h.heightBox,
              Text(context.localized.addPhoto, style: body18SemiBoldStyle,),
              4.h.heightBox,
              GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4.r,
                    crossAxisSpacing: 4.r),
                children: [
                  for (var file in selectedFiles)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                          image: DecorationImage(image: FileImage(file), fit: BoxFit.cover),),
                    ),
                  MHImagePicker.multiple(
                      onPicked: (files) {
                        if (mounted) {
                          selectedFiles.addAll(files);
                          setState(() {});
                        }
                      },
                      child: MHRoundedContainer(
                          child: MoreHandsAssets.icons.plusYellow.svg(height: 32.r)))
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 16.h),
        ),
      ),
    );
  }
}
