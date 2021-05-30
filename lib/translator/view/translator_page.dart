import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';
import 'package:sketch_vision_app/translator/bloc/translator_bloc.dart';
import 'package:sketch_vision_app/translator/view/translator_box.dart';

class TranslatorPage extends StatelessWidget {
  const TranslatorPage({
    Key? key,
  }) : super(key: key);

  static FluentPageRoute route(BuiltList<ClassResult> classes) {
    return FluentPageRoute(
      builder: (_) {
        return BlocProvider<TranslatorBloc>(
          create: (_) => TranslatorBloc(classes: classes),
          child: DoublePageContent(
            title: Locale_cs.translate,
            contentLeft: TranslatorBox(),
            contentRight: TranslatorPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}
