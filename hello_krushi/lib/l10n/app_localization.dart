import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static Map<String, String>? _localizedStrings;

  static Future<AppLocalizations> load(Locale locale) async {
    String jsonString =
        await rootBundle.loadString('lib/l10n/${locale.languageCode}.json');
    _localizedStrings = json.decode(jsonString).cast<String, String>();
    return AppLocalizations(locale);
  }

  static String? translate(String key) {
    log(key);
    return _localizedStrings![key];
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'hi', 'mr'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
