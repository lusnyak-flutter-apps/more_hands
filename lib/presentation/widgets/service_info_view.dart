import 'package:flutter/material.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class ServiceInfoView extends StatelessWidget {
  const ServiceInfoView({super.key, required this.service});
  final  ServiceModel service;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(  bottom: 8.h),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MHTag(title: "100 \$ час"),
                    Row(
                      children: [
                        MoreHandsAssets.icons.mapPin.svg(height: 24.r),
                        Text("Москва", style: body16MediumStyle),
                      ],
                    ).paddingAll(4.r),

                  ],
                ),
                8.h.heightBox,
                MHImage(
                  size: context.width,
                  imageUrl: "https://picsum.photos/200/300?random=1",
                ),
                16.h.heightBox,
                Text(
                  "Создам для вас незабываемую фотосессию, которую вы будете вспоминать еще долго, пересматривая снимки, которые я заботливо выберу и обработаю для вас, Создам для вас незабываемую фотосессию, которую вы будете вспоминать еще долго, пересматривая снимки, которые я заботливо выберу и обработаю для вас",
                  style: body16Style,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ).expanded(),
          MHGradientButton(title: context.localized.sendRequest, onPressed: (){},),
        ],
      ),
    );
  }
}
