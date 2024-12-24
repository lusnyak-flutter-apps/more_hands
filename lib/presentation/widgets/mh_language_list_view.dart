import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class MhLanguageListView extends StatefulWidget {
  const MhLanguageListView({super.key});

  @override
  State<MhLanguageListView> createState() => _MhLanguageListViewState();
}

class _MhLanguageListViewState extends State<MhLanguageListView> {
  String selected = "ru";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(context.localized.russian),
            trailing:
                selected == "ru" ? MoreHandsAssets.icons.check.svg() : null,
            onTap: () {
              changeLanguage("ru");
            },
          ),
          const Divider(),
          ListTile(
            title: Text(context.localized.english),
            trailing:
                selected == "en" ? MoreHandsAssets.icons.check.svg() : null,
            onTap: () {
              changeLanguage("en");
            },
          ),

          // Text(context.localized.enterRequestText, style: body16Style,)
        ],
      ),
    );
  }

  Future<void> changeLanguage(String language) async {
    setState(() {
      selected = language;
    });
    debugPrint(language);
    await AppLocalizations.delegate.load(Locale(language)).then((onValue) {
      debugPrint(onValue.localeName);
    }).catchError((onError) {
      debugPrint(onError.toString());
    });
  }
}
