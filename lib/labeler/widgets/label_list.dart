import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/labeler/widgets/label_item.dart';
import 'package:sketch_vision_app/translator/view/translator_page.dart';

/// {@template label_list}
/// List of classified labels and its scores.
/// {@endtemplate}
class LabelList extends StatelessWidget {
  /// {@macro label_list}
  const LabelList({
    Key? key,
    required this.data,
    this.menu,
  }) : super(key: key);

  /// List of classified [ClassResult], which contains labels and its scores.
  final BuiltList<ClassResult> data;

  /// A menu widget which will be shown at the top of [LabelerPage].
  ///
  /// If `null`, then the menu is not shown, for example in [TranslatorPage].
  final Widget? menu;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(Locale_cs.no_labels),
        ),
      );
    }

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        if (data.isEmpty) {
          return const SizedBox();
        }

        final labelItem = LabelItem(
          name: data.elementAt(index).class_,
          score: data.elementAt(index).score,
        );

        if (index == 0 && menu != null) {
          return Column(
            children: [
              menu!,
              labelItem,
            ],
          );
        }
        return labelItem;
      },
    );
  }
}
