import 'package:flutter/material.dart';
import 'package:flutter_diet/i18n/generated/i18n/translations.g.dart/strings.g.dart';
import 'package:flutter_diet/pages/Home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
  Intl.defaultLocale = 'es_ES';
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
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: LocaleSettings.instance.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
    );
  }
}
