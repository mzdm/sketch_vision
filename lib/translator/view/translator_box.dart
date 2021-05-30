import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/translator/bloc/translator_bloc.dart';

class TranslatorBox extends StatefulWidget {
  TranslatorBox({
    Key? key,
  }) : super(key: key);

  @override
  _TranslatorBoxState createState() => _TranslatorBoxState();
}

class _TranslatorBoxState extends State<TranslatorBox> {
  late final TranslatorBloc translatorBloc;

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
            label: 'Jazyk',
            child: Combobox<String>(
              placeholder: const Text('Vybrat jazyk'),
              isExpanded: true,
              items: _availableLanguages.entries
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
                if (value != null)
                  setState(() {
                    translatorBloc
                        .add(TranslatorTranslated(targetLanguage: value));
                    comboBoxValue = value;
                  });
              },
            ),
          ),
        ),
      ),
    );
  }
}

const _availableLanguages = <String, String>{
  'Arabic': 'ar',
  'Bulgarian': 'bg',
  'Bengali': 'bn',
  'Bosnian': 'bs',
  'Montenegrin': 'cnr',
  'Czech': 'cs',
  'Welsh': 'cy',
  'Danish': 'da',
  'German': 'de',
  'Greek': 'el',
  'Spanish': 'es',
  'Estonian': 'et',
  'Finnish': 'fi',
  'French': 'fr',
  'Canadian French': 'fr-CA',
  'Irish': 'ga',
  'Gujarati': 'gu',
  'Hebrew': 'he',
  'Hindi': 'hi',
  'Croatian': 'hr',
  'Hungarian': 'hu',
  'Indonesian': 'id',
  'Italian': 'it',
  'Japanese': 'ja',
  'Korean': 'ko',
  'Lithuanian': 'lt',
  'Latvian': 'lv',
  'Malayalam': 'ml',
  'Malay': 'ms',
  'Maltese': 'mt',
  'Nepali': 'ne',
  'Norwegian Bokmål': 'nb',
  'Dutch': 'nl',
  'Polish': 'pl',
  'Portuguese': 'pt',
  'Romanian': 'ro',
  'Russian': 'ru',
  'Sinhala': 'si',
  'Slovak': 'sk',
  'Slovenian': 'sl',
  'Serbian': 'sr',
  'Swedish': 'sv',
  'Tamil': 'ta',
  'Telugu': 'te',
  'Thai': 'th',
  'Turkish': 'tr',
  'Ukrainian': 'uk',
  'Urdu': 'ur',
  'Vietnamese': 'vi',
  'Simplified Chinese': 'zh',
  'Traditional Chinese': 'zh-TW',
};
