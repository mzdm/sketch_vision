import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibm_apis/language_translator.dart' as lang_api;

import 'fixtures/language_api.dart';

extension WidgetTesterExt on WidgetTester {
  Future<void> pumpApp(Widget widget) async {
    return pumpWidget(
      FluentApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          DefaultFluentLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}

BuiltList<lang_api.Translation> translatorLoadFakeData() {
  final List<dynamic> fakeData = json.decode(translatorFakeData);
  return BuiltList.from(
    fakeData.map(
      (value) => lang_api.standardSerializers.deserializeWith(
        lang_api.Translation.serializer,
        value,
      ),
    ),
  );
}
