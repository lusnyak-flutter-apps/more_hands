import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';
import 'package:location/location.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/language/language_cubit.dart';

// import 'package:more_hands/data/local/token_storage/token_stotage_impl.dart';
import 'package:uikit/uikit.dart';

import 'presentation/pages/subscription/cubit/subscription_cubit.dart';

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
      if (_locationData?.longitude != null &&
          _locationData?.latitude != null &&
          _locationData?.longitude != Preferences.instance.longitude &&
          _locationData?.latitude != Preferences.instance.latitude) {
        Preferences.instance.latitude = _locationData!.latitude!;
        Preferences.instance.longitude = _locationData!.longitude!;
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
        return MultiBlocProvider(
          providers: [
            BlocProvider<LanguageCubit>(
              create: (context) => LanguageCubit()..onLoadSelectedLanguage(),
            ),
            BlocProvider<SubscriptionCubit>(
              create: (context) =>
                  getIt<SubscriptionCubit>()..checkSubscriptionStatus(),
            ),
          ],
          child: BlocBuilder<LanguageCubit, Locale>(builder: (context, locale) {
            String localeCode = locale.languageCode;
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
              locale: Locale(localeCode),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            );
          }),
        );
      },
    );
  }
}
