import 'package:flutter/material.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({
    super.key,
    this.items = const [],
    this.onTapItem,
  });

  final List<String> items;
  final Function(int)? onTapItem;

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
              for (var index = 0; index < items.length; index++)
                InkWell(
                  onTap: (){
                    onTapItem?.call(index);
                  },
                  child: MHImage(
                    size: context.width / 2 - 4.r,
                    imageUrl: items[index],
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
