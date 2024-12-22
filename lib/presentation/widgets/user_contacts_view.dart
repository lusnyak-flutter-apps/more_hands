import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class UserContactsView extends StatelessWidget {
  const UserContactsView({super.key, required this.contacts});

  final List<String> contacts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var item in contacts)
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            onTap: (){},
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.symmetric(vertical:1.h),
            horizontalTitleGap: 10.w,
            minVerticalPadding: 0,
            title: Text(
              item,
              style: body16MediumStyle,
              textAlign: TextAlign.left,
            ),
            leading:  Container(
              decoration: BoxDecoration(
                color: MHColors.whiteColor.withOpacity(0.24),
                shape: BoxShape.circle,
                border: Border.all(
                    color: MHColors.whiteColor.withOpacity(0.26), width: 1.0),
              ),
              child: MoreHandsAssets.icons.phone
                  .svg(height: 20.r)
                  .paddingAll(6.r),
            ),
          )
      ],
    );
  }
}
