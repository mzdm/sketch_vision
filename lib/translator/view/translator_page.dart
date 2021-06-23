import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/labeler/widgets/label_list.dart';
import 'package:sketch_vision_app/labeler/widgets/skeleton_list.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';
import 'package:sketch_vision_app/translator/bloc/translator_bloc.dart';
import 'package:sketch_vision_app/translator/repositories/translator_repository.dart';
import 'package:sketch_vision_app/translator/view/translator_box.dart';

/// {@template translator_page}
/// A page which contains [TranslatorBox] and [TranslatorList] views.
/// {@endtemplate}
class TranslatorPage extends StatelessWidget {
  /// {@macro translator_page}
  const TranslatorPage({
    Key? key,
  }) : super(key: key);

  static FluentPageRoute route(BuiltList<ClassResult> classes) {
    return FluentPageRoute(
      builder: (context) {
        return BlocProvider<TranslatorBloc>(
          create: (_) => TranslatorBloc(
            translatorRepository: TranslatorRepository(
              classes: classes,
            ),
          ),
          child: DoublePageContent(
            title: context.l10n.translate,
            contentLeft: const TranslatorBox(),
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

/// {@template translator_list}
/// Displays the content based on the state of [TranslatorBloc],
/// if [TranslatorLoading] then loading [SkeletonList] is displayed,
/// else if [TranslatorError] then an [InfoBar] message is displayed,
/// else if [TranslatorSuccess] then the translated label list is displayed,
/// else the default label list in `English` is displayed.
/// {@endtemplate}
class TranslatorList extends StatelessWidget {
  /// {@macro translator_list}
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
              title: Text(context.l10n.error),
              content: Text(state.message),
              severity: InfoBarSeverity.error,
            ),
          );
        }

        if (state is TranslatorSuccess) {
          return LabelList(data: state.translatedClasses);
        }

        return LabelList(data: translatorBloc.translatorRepository.classes);
      },
    );
  }
}
