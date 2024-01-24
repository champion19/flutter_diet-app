import 'package:flutter/material.dart';
import 'package:flutter_diet/pages/Home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:ui' as ui;

import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());

  final languageCode = ui.window.locale.languageCode;
  final countryCode = ui.window.locale.countryCode;
  String defaultlocale = languageCode;
  if (countryCode != null) {
    defaultlocale += '_$countryCode';
  }
  print(defaultlocale);
  Intl.defaultLocale = defaultlocale;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
    );
  }
}
