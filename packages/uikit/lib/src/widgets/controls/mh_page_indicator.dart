import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uikit/src/themes/mh_colors.dart';

class MHPageIndicator extends StatelessWidget {
  const MHPageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  final PageController controller;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller, // PageController
      count: count,
      axisDirection: Axis.horizontal,
      effect: ExpandingDotsEffect(
        expansionFactor: 2,
        spacing: 3.w,
        dotHeight: 6.r,
        dotWidth: 6.r,
        dotColor: MHColors.whiteColor.withOpacity(0.4),
        activeDotColor: MHColors.whiteColor.withOpacity(0.64),
      ),
    );
  }
}
