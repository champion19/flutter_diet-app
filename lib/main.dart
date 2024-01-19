import 'package:flutter/material.dart';
import 'package:flutter_diet/pages/Home.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() {
  Intl.defaultLocale = 'en_US';
  initializeDateFormatting("en_US ", null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const Homepage(),
     localizationsDelegates: [
    //GlobalMaterialLocalizations.delegate
     ],
        );
  }
}
