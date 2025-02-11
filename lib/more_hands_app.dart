import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:location/location.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
// import 'package:more_hands/data/local/token_storage/token_stotage_impl.dart';
import 'package:uikit/uikit.dart';


final appRouter = AppRouter();

class MoreHandsApp extends StatefulWidget {
  const MoreHandsApp({super.key});

  @override
  State<MoreHandsApp> createState() => _MoreHandsAppState();
}

class _MoreHandsAppState extends State<MoreHandsApp> {
  Location location = Location();

  bool _serviceEnabled = false;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  @override
  void initState() {
    super.initState();
    getLocation();
    onLocationChanged();
    enableBackgroundMode();
  }

  void onLocationChanged() {
    location.onLocationChanged.listen((LocationData currentLocation) async {
      _locationData = currentLocation;
       debugPrint(currentLocation.latitude.toString());
      debugPrint(currentLocation.longitude.toString());

      if (_locationData?.longitude != null &&
          _locationData?.latitude != null &&
          _locationData?.longitude != Preferences.instance.longitude &&
          _locationData?.latitude != Preferences.instance.latitude) {
        Preferences.instance.latitude = _locationData!.latitude!;
        Preferences.instance.longitude = _locationData!.longitude!;
        debugPrint(_locationData.toString());
        // await getIt<LocationRepository>().whereAmI();
      }
    });
  }

  Future<void> getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    if (_locationData?.longitude != null && _locationData?.latitude != null) {
      Preferences.instance.latitude = _locationData!.latitude!;
      Preferences.instance.longitude = _locationData!.longitude!;
      await getIt<LocationRepository>().whereAmI();
    }
  }

  Future<void> enableBackgroundMode() async {
    bool bgModeEnabled = await location.isBackgroundModeEnabled();
    if (bgModeEnabled) {
      return;
    } else {
      try {
        await location.enableBackgroundMode();
      } catch (e) {
        debugPrint(e.toString());
      }
      try {
        bgModeEnabled = await location.enableBackgroundMode();
      } catch (e) {
        debugPrint(e.toString());
      }
      debugPrint(bgModeEnabled.toString()); //True!
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
          locale: const Locale("ru"),
          // AppLocalizations.supportedLocales.first,
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
  }
}

// Widget get mor eHandsApp => ScreenUtilInit(
//       designSize: const Size(393, 852),
//       builder: (context, _) {
//         return MaterialApp.router(
//           builder: (context, child) {
//             return MediaQuery(
//                 data: MediaQuery.of(context)
//                     .copyWith(textScaler: TextScaler.noScaling),
//                 child: child!);
//           },
//           debugShowCheckedModeBanner: false,
//           theme: darkTheme,
//           darkTheme: darkTheme,
//           routerConfig: appRouter.config(),
//           locale: const Locale("ru"), // AppLocalizations.supportedLocales.first,
//           localizationsDelegates: AppLocalizations.localizationsDelegates,
//           // localeResolutionCallback: (locale, supportedLocales) {
//           //   if (locale != null) {
//           //     for (var supportedLocale in supportedLocales) {
//           //       if (supportedLocale.languageCode == locale.languageCode) {
//           //         return supportedLocale;
//           //       }
//           //     }
//           //   }
//           //   return supportedLocales.first;
//           // },
//           //
//           // localeListResolutionCallback: (locales, supportedLocales) {
//           //   if(locales != null) {
//           //     for (var locale in locales) {
//           //       if (supportedLocales.contains(locale)) {
//           //         return locale;
//           //       }
//           //     }
//           //   }
//           //   return supportedLocales.first;
//           // },
//           supportedLocales: AppLocalizations.supportedLocales,
//         );
//       },
//     );
