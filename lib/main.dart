import 'package:flutter/material.dart';
import 'package:flutter_diet/app/app.dart';
import 'package:flutter_diet/i18n/generated/i18n/translations.g.dart/strings.g.dart';
import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = 'es_ES';
  runApp(TranslationProvider(
    child: const MyApp(),
  ));
}
