import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/translator/bloc/translator_bloc.dart';
import 'package:sketch_vision_app/translator/data/available_languages.dart';

/// {@template translator_box}
/// Displays [Combobox] with [_availableLanguages].
/// {@endtemplate}
class TranslatorBox extends StatefulWidget {
  /// {@macro translator_box}
  const TranslatorBox({
    Key? key,
  }) : super(key: key);

  @override
  _TranslatorBoxState createState() => _TranslatorBoxState();
}

class _TranslatorBoxState extends State<TranslatorBox> {
  late final TranslatorBloc translatorBloc;

  /// Selected language code.
  String? comboBoxValue;

  @override
  void initState() {
    super.initState();
    translatorBloc = context.read<TranslatorBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(45.0),
        child: SizedBox(
          width: 200,
          child: InfoLabel(
            label: context.l10n.language,
            child: Localizations(
              delegates: const [
                GlobalWidgetsLocalizations.delegate,
                DefaultFluentLocalizations.delegate,
              ],
              locale: const Locale('en'),
              child: Combobox<String>(
                placeholder: Text(context.l10n.choose_language),
                isExpanded: true,
                items: availableLanguagesTranslator.entries
                    .toList()
                    .map(
                      (e) => ComboboxItem<String>(
                        value: e.value,
                        child: Text(e.key),
                      ),
                    )
                    .toList(),
                value: comboBoxValue,
                onChanged: (value) {
                  log('combobox chosen value: ${value.toString()}');
                  if (value != null) {
                    setState(() {
                      translatorBloc
                          .add(TranslatorTranslated(targetLanguage: value));
                      comboBoxValue = value;
                    });
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
