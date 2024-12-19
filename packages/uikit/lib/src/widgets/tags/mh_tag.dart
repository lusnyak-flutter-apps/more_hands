import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MHTag extends StatelessWidget {
  const MHTag({
    super.key,
    this.onPressed,
    required this.title,
    this.icon,
    this.tintColor,
    this.borderColor,
    this.iconAlignment = IconAlignment.start,
  });

  final VoidCallback? onPressed;
  final String title;
  final Widget? icon;
  final Color? tintColor;
  final Color? borderColor;
  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    final label = Text(title,
        style: body13MediumStyle.copyWith(color: MHColors.whiteColor));
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
        decoration: BoxDecoration(
          border: Border.all(
              color: (borderColor) ??
                  (tintColor ?? MHColors.whiteColor).withOpacity(0.26),
              width: 1.0),
          borderRadius: BorderRadius.circular(16.r),
          color: (tintColor ?? MHColors.whiteColor).withOpacity(0.24),
        ),
        child: icon != null
            ? Row(
                children: iconAlignment == IconAlignment.start
                    ? [icon!, 4.w.widthBox, label]
                    : [label, 4.w.widthBox, icon!],
              )
            : label,
      ),
    );
  }
}
