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
  });

  final VoidCallback? onPressed;
  final String title;
  final Widget? icon;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    final label = Text(title,
        style: body16MediumStyle.copyWith(color: MHColors.blackBGColor));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        border: Border.all(color: MHColors.whiteColor.withOpacity(0.26), width: 1.0),
        borderRadius: BorderRadius.circular(16.r),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: gradientColors ?? [MHColors.yellowColor, MHColors.amberColor],
        ),
      ),
      child: icon != null
          ? Row(
              children: [label, 4.w.widthBox, icon!],
            )
          : label,
    );
  }
}
