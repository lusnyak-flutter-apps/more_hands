import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/file_model/file_model.dart';
import 'package:more_hands/domain/models/service_additional_info_model/service_additional_info_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class PortfolioItem {
  final ServiceModel service;
  final FileModel file;
  final bool isMain;

  PortfolioItem(
      {required this.service, required this.file, this.isMain = false});

  String get filePath =>
      "${APIBase.url}/storage/download?category=${file.attachCategory?.rawValue}&fileId=${file.usfFileId}";
}

class PortfolioView extends StatefulWidget {
  const PortfolioView({
    super.key,
    this.items = const [],
    this.onTapItem,
    this.my = false,
    this.onDeletedItem,
    this.onEditItem,
  });

  final List<PortfolioItem> items;
  final Function(PortfolioItem)? onTapItem;
  final Function(ServiceModel)? onDeletedItem;
  final Function(ServiceModel)? onEditItem;
  final bool my;

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  bool showDeleteOptions = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.localized.portfolio,
              style: body24SemiBoldStyle,
              textAlign: TextAlign.left,
            ),
            if (widget.my)
              MHInkWell(
                onTap: () {
                  if(mounted) {
                    setState(() {
                      showDeleteOptions = true;
                    });
                  }
                },
                child: MoreHandsAssets.icons.edit.svg(),
              ),
          ],
        ),
        if (widget.items.isNotEmpty)
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4.r,
              crossAxisSpacing: 4.r,
            ),
            children: [
              for (var item in widget.items)
                InkWell(
                  onTap: () {
                    widget.onTapItem?.call(item);
                  },
                  child: item.isMain
                      ? Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            MHImage(
                              size: context.width / 2 - 4.r,
                              imageUrl: item.filePath,
                            ),
                            if(showDeleteOptions)
                            Positioned(
                              top: 8.0,
                              left: 8.0,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      widget.onDeletedItem?.call(item.service);
                                    },
                                    style: IconButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                        backgroundColor: MHColors.darkerGrayColor.withValues(alpha: 0.8)
                                    ),
                                    icon: MoreHandsAssets.icons.close.svg(
                                      width: 28.0,
                                      colorFilter: const ColorFilter.mode(
                                          MHColors.redColor, BlendMode.srcIn),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      widget.onEditItem?.call(item.service);
                                      if(mounted) {
                                        setState(() {
                                          showDeleteOptions = false;
                                        });
                                      }
                                    },
                                    style: IconButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      backgroundColor: MHColors.darkerGrayColor.withValues(alpha: 0.8)
                                    ),
                                    icon: MoreHandsAssets.icons.edit.svg(
                                      width: 28.0,
                                      colorFilter: const ColorFilter.mode(
                                          MHColors.amberColor, BlendMode.srcIn),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              right: 8.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.service.serviceInfo?.servName ?? "",
                                    style: body14SemiBoldStyle,
                                  ),
                                  if (item.service.serviceAdditionalInfo !=
                                      null)
                                    MHTag(
                                            title:
                                                "${item.service.serviceAdditionalInfo!.formatPrice}${item.service.serviceAdditionalInfo!.priceCurrencySign} ${item.service.serviceAdditionalInfo!.measureCode!.title(context)}")
                                        .paddingOnly(top: 4.w),
                                ],
                              ).paddingSymmetric(
                                  horizontal: 8.w, vertical: 8.w),
                            ),
                          ],
                        )
                      : MHImage(
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
