import 'package:flutter/material.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class WhatCanDoView extends StatelessWidget {
  const WhatCanDoView({
    super.key,
    this.onEdit,
    this.items = const [],
  });

  final VoidCallback? onEdit;
  final List<ServiceModel> items;

  List<String> filterCategories() {
    List<String> cats = <String>[];
    for (var e in items) {
      if (e.serviceInfo?.servName != null &&
          !cats.contains(e.serviceInfo!.servName)) {
        cats.add(e.serviceInfo!.servName!);
      }
    }
    return cats;
  }

  @override
  Widget build(BuildContext context) {
    final tags = filterCategories();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.localized.whatCanIDo,
              style: body24SemiBoldStyle,
              textAlign: TextAlign.left,
            ),
            if (onEdit != null)
              MHInkWell(
                onTap: onEdit,
                child: MoreHandsAssets.icons.edit.svg(),
              ),
          ],
        ),
        if (items.isNotEmpty)
          Wrap(
            spacing: 4.w,
            runSpacing: 4.h,
            children: [
              for (var tag in tags)
                MHTag(
                  title: tag,
                  tintColor: MHColors.darkGrayColor,
                  borderColor: MHColors.grayColor,
                )
            ],
          ).paddingOnly(top: 16.h)
        else
          Text(
            context.localized.notFilled,
            style: body16Style.copyWith(color: MHColors.grayColor98),
            textAlign: TextAlign.left,
          ).paddingOnly(top: 2.h),
      ],
    );
  }
}
