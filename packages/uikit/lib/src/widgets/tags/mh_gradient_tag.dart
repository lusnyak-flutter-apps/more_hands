import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uikit/src/themes/mh_colors.dart';
import 'package:uikit/src/themes/mh_text_styles.dart';

class MHGradientTag extends StatelessWidget {
  const MHGradientTag({
    super.key,
    this.onPressed,
    required this.title,
    this.gradientColors,
    this.icon,
    this.iconAlignment = IconAlignment.end,
  });

  final VoidCallback? onPressed;
  final String title;
  final Widget? icon;
  final List<Color>? gradientColors;
  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    final label = Text(title,
        style: body16MediumStyle.copyWith(color: MHColors.blackBGColor));
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: MHColors.whiteColor.withValues(alpha:0.26), width: 1.0),
        borderRadius: BorderRadius.circular(16.r),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: gradientColors ?? [MHColors.yellowColor, MHColors.amberColor],
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16.r),
        overlayColor: const WidgetStatePropertyAll(MHColors.amberColor),
        child: icon != null
            ? Row(
                children: iconAlignment == IconAlignment.end
                    ? [label, 4.w.widthBox, icon!]
                    : [icon!, 4.w.widthBox, label],
              ).paddingSymmetric(horizontal: 8.w, vertical: 2.h)
            : label.paddingSymmetric(horizontal: 8.w, vertical: 2.h),
      ),
    );
  }
}
