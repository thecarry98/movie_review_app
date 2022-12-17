import 'package:flutter/material.dart';

class LocalizationConstants {
  static const List<Locale> availableLocales = [
    Locale('vi', 'VN'),
    Locale('en', 'US')
  ];
  static const Locale viLocale = Locale('vi', 'VN');
  static const Locale enUSLocale = Locale('en', 'US');
  static const path = 'assets/translations';
}

class NotificationConfig {
  static const highImportance = "High Importance channel";
  static const highChannelId = "flutter_channel_id_0";
  static const highChannelDescription = "Floating notification with sound";
  static const notificationIconPath = 'ic_notification';
}

class Config {
  static const memCacheHeight = 150;
  static const memCacheWidth = 150;
}
