import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:uikit/uikit.dart';

import 'core/router/app_router.dart';

final appRouter = AppRouter();

Widget get moreHandsApp => ScreenUtilInit(
  designSize: const Size(393, 852),
  builder: (context, _) {
    return MaterialApp.router(
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.noScaling),
            child: child!);
      },
      debugShowCheckedModeBanner: false,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      routerConfig: appRouter.config(),
      locale: AppLocalizations.supportedLocales.first,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  },
);