import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

Future<T?> showMHModalBottomSheet<T>(BuildContext context,
    {Widget? child, required String title, bool isScrollControlled = false}) async {
  return await showModalBottomSheet<T>(
    backgroundColor: Colors.transparent,
    barrierColor: MHColors.blackBGColor.withOpacity(0.32),
    elevation: 1,
    useSafeArea: true,
    enableDrag: true,
    isScrollControlled:isScrollControlled ,
    context: context,
    builder: (builderContext) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          decoration: BoxDecoration(
            color: MHColors.darkerGrayColor.withOpacity(0.99),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const MHRoundedContainer(
                height: 5,
                width: 36,
                color: MHColors.grayColor98,
              ).alignAtTopCenter(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: body20SemiBoldStyle,
                  ),
                  MHInkWell(
                    child: MoreHandsAssets.icons.close.svg(),
                    onTap: () {
                      Navigator.of(context).maybePop();
                    },
                  ),
                ],
              ),
              child ?? const SizedBox.shrink(),
            ],
          ).paddingSymmetric(horizontal: 24.w, vertical: 8.h),
        ),
      );
    },
  );
}
