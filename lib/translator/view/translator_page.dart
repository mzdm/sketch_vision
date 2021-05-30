import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/labeler/widgets/label_list.dart';
import 'package:sketch_vision_app/labeler/widgets/skeleton_list.dart';
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
            contentRight: const LabelerView(page: TranslatorList()),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class TranslatorList extends StatelessWidget {
  const TranslatorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translatorBloc = context.read<TranslatorBloc>();

    return BlocBuilder<TranslatorBloc, TranslatorState>(
      builder: (context, state) {
        if (state is TranslatorLoading) {
          return const SkeletonList(isLoading: true);
        }

        if (state is TranslatorError) {
          return Center(
            child: InfoBar(
              isLong: true,
              title: const Text(Locale_cs.error),
              content: Text(state.message),
              severity: InfoBarSeverity.error,
            ),
          );
        }

        if (state is TranslatorSuccess) {
          return LabelList(data: state.translatedClasses);
        }

        return LabelList(data: translatorBloc.classes);
      },
    );
  }
}
