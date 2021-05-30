import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/app/locale/locale.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';

class ResponseDialog extends StatefulWidget {
  const ResponseDialog({
    Key? key,
    required this.classes,
  }) : super(key: key);

  final BuiltList<ClassResult> classes;

  static FluentPageRoute route(BuiltList<ClassResult> classes) {
    return FluentPageRoute(
      builder: (_) {
        return SinglePageContent(
          title: Locale_cs.json_response,
          content: ResponseDialog(classes: classes),
        );
      },
    );
  }

  @override
  _ResponseDialogState createState() => _ResponseDialogState();
}

class _ResponseDialogState extends State<ResponseDialog> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final json = standardSerializers.serialize(widget.classes);
    _textController.text = const JsonEncoder.withIndent('   ').convert(json);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextBox(
        expands: true,
        maxLines: null,
        readOnly: true,
        controller: _textController,
      ),
    );
  }
}
