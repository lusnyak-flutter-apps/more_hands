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
          theme: darkTheme,
          darkTheme: darkTheme,
          routerConfig: appRouter.config(),
          locale: const Locale("ru"), // AppLocalizations.supportedLocales.first,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          // localeResolutionCallback: (locale, supportedLocales) {
          //   if (locale != null) {
          //     for (var supportedLocale in supportedLocales) {
          //       if (supportedLocale.languageCode == locale.languageCode) {
          //         return supportedLocale;
          //       }
          //     }
          //   }
          //   return supportedLocales.first;
          // },
          //
          // localeListResolutionCallback: (locales, supportedLocales) {
          //   if(locales != null) {
          //     for (var locale in locales) {
          //       if (supportedLocales.contains(locale)) {
          //         return locale;
          //       }
          //     }
          //   }
          //   return supportedLocales.first;
          // },
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
