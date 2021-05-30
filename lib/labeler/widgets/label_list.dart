import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/labeler/helpers/classifier_sorter.dart';
import 'package:sketch_vision_app/labeler/widgets/label_item.dart';

class LabelList extends StatelessWidget {
  const LabelList({
    Key? key,
    required this.data,
    this.menu,
  }) : super(key: key);

  final BuiltList<ClassifierResult> data;
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

    final classes = sortByScore(data);
    return ListView.builder(
      itemCount: classes.length,
      itemBuilder: (context, index) {
        if (classes.isEmpty) {
          return const SizedBox();
        }

        final labelItem = LabelItem(
          name: classes.elementAt(index).class_,
          score: classes.elementAt(index).score,
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
