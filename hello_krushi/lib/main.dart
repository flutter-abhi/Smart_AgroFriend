import 'package:flutter/material.dart';
import 'package:hello_krushi/Screens/slider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import "l10n/app_localization.dart";

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SliderPage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate, // Add your localization delegate
      ],
      supportedLocales:  [
        Locale('en', ''), // English
        Locale('hi', ''), // Hindi
        Locale('mr', ''), // Marathi
      ],
    );
  }
}
