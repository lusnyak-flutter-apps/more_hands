import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/firebase/firebase_options.dart';

import 'local_notification_manager.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  debugPrint("backgroundHandler");

  debugPrint(message.data.toString());
  debugPrint(message.notification?.title);
  debugPrint(message.notification?.body);
}

class FCMService {
  FCMService._();

  /// Returns an instance using the default [FirebaseApp].
  static FCMService get instance {
    return FCMService._();
  }

  Future<void> setUp() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    LocalNotificationManager.initialize();
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<String?> get firebaseToken async =>
      await FirebaseMessaging.instance.getToken();

  Future<RemoteMessage?> getInitialMessage() async {
    return await FirebaseMessaging.instance.getInitialMessage();
  }

  delegates(BuildContext context) async {
    FirebaseMessaging.instance.onTokenRefresh.listen((event) {
      if (event.isNotEmpty && event != Preferences.instance.pushToken) {
        Preferences.instance.pushToken = event;
      }
    });

    await FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        debugPrint(message.toMap().toString());
        // redirect(context, message);
      }
    });

    /// foreground
    FirebaseMessaging.onMessage.listen((message) {
      debugPrint("onMessage--- ${message.toMap()}");
      if (message.notification != null && context.mounted) {
        LocalNotificationManager.display(context, message: message);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint("onMessageOpenedApp");
      debugPrint(message.toMap().toString());
    });

    FirebaseMessaging.instance.getToken().then((value) {
      debugPrint('FCM Token: $value');
      if (value != null) {
        Preferences.instance.pushToken = value;
      }
    });
  }
}
