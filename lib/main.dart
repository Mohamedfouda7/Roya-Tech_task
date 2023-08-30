import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:roya_tech_task/Core/my_app.dart';

void main() {
  runApp(
     EasyLocalization(
    supportedLocales: const [Locale('ar', 'EG'), Locale('en', 'US')],
    path: 'assets/langs',
    fallbackLocale: const Locale('en', 'US'),
    startLocale: const Locale('en', 'US'),
    child: MyApp()));
}



