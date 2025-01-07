import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

Future<T?> showMHModalBottomSheet<T>(BuildContext context,
    {Widget? child,
    required String title,
    bool isScrollControlled = false}) async {
  return await showModalBottomSheet<T>(
    backgroundColor: Colors.transparent,
    barrierColor: MHColors.blackBGColor.withValues(alpha: 0.32),
    elevation: 1,
    useSafeArea: true,
    enableDrag: true,
    isScrollControlled: isScrollControlled,
    context: context,
    builder: (builderContext) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          decoration: BoxDecoration(
            color: MHColors.darkerGrayColor.withValues(alpha:0.99),
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
              ).paddingSymmetric(vertical: 8.h).alignAtTopCenter(),
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
              ).paddingOnly(left: 24.w, right: 16.w),
              if (child != null)
                child.paddingSymmetric(horizontal: 24.w, vertical: 8.h)
            ],
          ),
        ),
      );
    },
  );
}

Future<T?> showMHScrollModalBottomSheet<T>(
  BuildContext context, {
  Widget? child,
  Widget? footer,
  required String title,
 }) async {
  return await showModalBottomSheet<T>(
    backgroundColor: Colors.transparent,
    barrierColor: MHColors.blackBGColor.withValues(alpha:0.32),
    elevation: 1,
    useSafeArea: true,
    enableDrag: true,
    isScrollControlled: true,
    context: context,
    builder: (builderContext) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          constraints: BoxConstraints(
            maxHeight: context.height * 0.85,
          ),
          decoration: BoxDecoration(
            color: MHColors.darkerGrayColor.withValues(alpha:0.99),
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
              ).paddingSymmetric(vertical: 8.h).alignAtTopCenter(),
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
              ).paddingOnly(left: 24.w, right: 16.w),
              if (child != null)
                child.paddingSymmetric(horizontal: 24.w, vertical: 8.h).expanded(),
              if (footer != null)
                footer.paddingSymmetric(horizontal: 24.w, vertical: 8.h),
            ],
          ),
        ),
      );
    },
  );
}
