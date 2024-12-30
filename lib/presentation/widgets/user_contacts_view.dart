import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class ContactItem {
  final String name;
  final Widget? icon;ContactItem({required this.name, this.icon});
}

class UserContactsView extends StatelessWidget {
  const UserContactsView({super.key, required this.contacts});

  final List<ContactItem> contacts;

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
              item.name,
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
              child: (item.icon ?? MoreHandsAssets.icons.mail
                  .svg(height: 20.r))
                  .paddingAll(6.r),
            ),
          )
      ],
    );
  }
}
