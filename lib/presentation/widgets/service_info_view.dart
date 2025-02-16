import 'package:flutter/material.dart';
import 'package:more_hands/core/network/constants/api_constants.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class ServiceInfoView extends StatefulWidget {
  const ServiceInfoView({
    super.key,
    required this.service,
    this.userHasService = false,
  });

  final ServiceModel service;
  final bool userHasService;
  // final int userId;
   @override
  State<ServiceInfoView> createState() => _ServiceInfoViewState();
}

class _ServiceInfoViewState extends State<ServiceInfoView> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    String priceTag = "";
    if (widget.service.serviceAdditionalInfo != null) {
      priceTag =
          "${widget.service.serviceAdditionalInfo!.price}${widget.service.serviceAdditionalInfo!.priceCurrency} ${widget.service.serviceAdditionalInfo!.measureCode!.title(context)}";
    }
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MHTag(title: priceTag),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MoreHandsAssets.icons.mapPin.svg(height: 24.r),
                          Flexible(
                            child: Text(widget.service.locations.map((e) => e.locName).join(","),
                                style: body16MediumStyle, maxLines: 1 ,overflow: TextOverflow.ellipsis,),
                          ),
                        ],
                      ).paddingAll(4.r),
                    ),
                  ],
                ),
                8.h.heightBox,
                widget.service.files.length > 1 ?
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: PageView(
                        controller: pageController,
                        children: [
                          for(var file in widget.service.files)
                            MHImage(
                              size: context.width,
                              imageUrl:"${APIBase.url}/storage/download?category=${file.attachCategory?.rawValue}&fileId=${file.usfFileId}",
                              // imageUrl: "https://picsum.photos/200/300?random=1",
                            )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MHPageIndicator(controller: pageController, count: widget.service.files.length),
                    ),
                  ],
                ) : MHImage(
                  size: context.width,
                  imageUrl:"${APIBase.url}/storage/download?category=${widget.service.files.first.attachCategory?.rawValue}&fileId=${widget.service.files.first.usfFileId}",
                  // imageUrl: "https://picsum.photos/200/300?random=1",
                )
                ,
                16.h.heightBox,
                Text(
                  widget.service.serviceAdditionalInfo?.addInfo ?? "",
                  style: body16Style,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ).expanded(),
          if(!widget.userHasService)
          MHGradientButton(
            title: context.localized.sendRequest,
            onPressed: () {
              Navigator.of(context).maybePop(true);
            },
          ),
        ],
      ),
    );
  }
}
