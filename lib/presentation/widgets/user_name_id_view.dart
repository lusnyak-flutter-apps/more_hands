import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class UserNameIdView extends StatelessWidget {
  const UserNameIdView({super.key, required this.name, this.id});

  final String name;
  final String? id;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: body32SemiBoldStyle,
          textAlign: TextAlign.left,
        ),
        8.w.widthBox,
        if (id != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "id $id",
                style: body13MediumStyle.copyWith(color: MHColors.grayColor),
              ),
              MoreHandsAssets.icons.wavyCheckYellow
                  .svg(height: 16.r)
                  .paddingOnly(left: 4.w),
            ],
          )
      ],
    );
  }
}
