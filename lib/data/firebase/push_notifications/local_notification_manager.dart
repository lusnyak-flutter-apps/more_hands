import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationManager {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    // RemoteMessage? message;

    InitializationSettings initializationSettings =
    const InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );

    _notificationsPlugin.initialize(initializationSettings);
  }

  static void display(BuildContext context, {required RemoteMessage message}) {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      AndroidNotification? android = message.notification?.android;
      // AppleNotification? ios = message.notification?.apple;
      String channelName = "more_hands_channel_id";
      NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          channelName,
          "MoreHands",
          importance: Importance.max,
          priority: Priority.high,
          icon: "@mipmap/ic_launcher",
          playSound: true,
        ),
        iOS: const DarwinNotificationDetails(
          presentSound: true,
        ),
      );
      if (message.notification != null &&
          android != null &&
          Platform.isAndroid) {
        debugPrint("Android notification");
        _notificationsPlugin.show(
          id,
          message.notification!.title,
          message.notification!.body,
          notificationDetails,
        );
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
