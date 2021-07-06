import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibm_apis/language_translator.dart' as lang_api;
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/image_picker/bloc/image_picker_cubit.dart';
import 'package:sketch_vision_app/labeler/bloc/labeler_bloc.dart';
import 'package:sketch_vision_app/translator/bloc/translator_bloc.dart';

import 'fixtures/language_api.dart';

class MockImagePickerCubit extends MockCubit<ImagePickerState>
    implements ImagePickerCubit {}

class FakeImagePickerState extends Fake implements ImagePickerState {}

extension WidgetTesterExt on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    ImagePickerCubit? imagePickerCubit,
    LabelerBloc? labelerBloc,
    TranslatorBloc? translatorBloc,
  }) async {
    registerFallbackValue<ImagePickerState>(FakeImagePickerState());
    registerFallbackValue<ImagePickerCubit>(MockImagePickerCubit());

    return pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(value: imagePickerCubit ?? MockImagePickerCubit()),
          // BlocProvider.value(value: labelerBloc ??),
          // BlocProvider.value(value: translatorBloc ??),
        ],
        child: FluentApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            DefaultFluentLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            scaffoldBackgroundColor: SketchColors.nav_body_content,
          ),
          home: widget,
        ),
      ),
    );
  }

  void setScreenSize(double width, double height) {
    binding.window.physicalSizeTestValue = Size(width, height);
    binding.window.devicePixelRatioTestValue = 1.0;
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
