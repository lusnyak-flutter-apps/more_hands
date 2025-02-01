import 'package:flutter/material.dart';
import 'package:more_hands/domain/enums/contact_type.dart';
import 'package:more_hands/utils/helpers/url_launcher_helper.dart';
import 'package:uikit/uikit.dart';

class ContactItem {
  final String name;
  final Widget? icon;
  final ContactType type;

  ContactItem({required this.name, this.icon, this.type = ContactType.none});
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
            onTap: () {
              if (item.name.contains("https") || item.name.contains("http")) {
                UrlLauncherHelper.launchInBrowser(item.name).catchError((e) {
                  if (context.mounted) {
                    context.showSnackBar(message: "$e");
                  }
                });
              } else {
                if (item.type != ContactType.none) {
                  final link = item.type.link(item.name);
                  UrlLauncherHelper.launchInBrowser(link!).catchError((e) {
                    if (context.mounted) {
                      context.showSnackBar(
                          message: "Не установлено подходящее приложение");
                    }
                  });
                }
              }
            },
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.symmetric(vertical: 1.h),
            horizontalTitleGap: 10.w,
            minVerticalPadding: 0,
            title: Text(
              item.name,
              style: body16MediumStyle,
              textAlign: TextAlign.left,
            ),
            leading: Container(
              decoration: BoxDecoration(
                color: MHColors.whiteColor.withValues(alpha: 0.24),
                shape: BoxShape.circle,
                border: Border.all(
                    color: MHColors.whiteColor.withValues(alpha: 0.26),
                    width: 1.0),
              ),
              child: (item.icon ?? MoreHandsAssets.icons.mail.svg(height: 20.r))
                  .paddingAll(6.r),
            ),
          )
      ],
    );
  }
}
