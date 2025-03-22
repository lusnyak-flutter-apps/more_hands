import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:more_hands/language/language_cubit.dart';
import 'package:more_hands/utils/utils.dart';
import 'package:uikit/uikit.dart';

class MhLanguageListView extends StatefulWidget {
  const MhLanguageListView({super.key});

  @override
  State<MhLanguageListView> createState() => _MhLanguageListViewState();
}

class _MhLanguageListViewState extends State<MhLanguageListView> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (BuildContext context, state) {
          final selected = state.languageCode;
          return Column(
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
        ); },
       ),
    );
  }

  Future<void> changeLanguage(String language) async {
    context.read<LanguageCubit>().onChangeLanguage(language);
  }
}
