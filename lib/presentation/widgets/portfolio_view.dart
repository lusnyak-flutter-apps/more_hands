import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/file_model/file_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class PortfolioItem {
  final ServiceModel service;
  final FileModel file;

  PortfolioItem({required this.service, required this.file, });

  String get filePath => "${APIBase.url}/storage/download?category=${file.attachCategory?.rawValue}&fileId=${file.usfFileId}";
}

class PortfolioView extends StatelessWidget {
  const PortfolioView({
    super.key,
    this.items = const [],
    this.onTapItem,
  });

  final List<PortfolioItem> items;
  final Function(PortfolioItem)? onTapItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          context.localized.portfolio,
          style: body24SemiBoldStyle,
          textAlign: TextAlign.left,
        ),
        if (items.isNotEmpty)
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 4.r, crossAxisSpacing: 4.r,),
            children: [
              for (var item in items)
                InkWell(
                  onTap: (){
                    onTapItem?.call(item);
                  },
                  child: MHImage(
                    size: context.width / 2 - 4.r,
                    imageUrl: item.filePath,
                  ),
                ),
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
