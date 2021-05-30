import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
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
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final json = standardSerializers.serialize(widget.classes);
    textController.text = const JsonEncoder.withIndent('   ').convert(json);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            TextBox(
              expands: true,
              maxLines: null,
              readOnly: true,
              controller: textController,
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Tooltip(
                  message: Locale_cs.copy,
                  child: IconButton(
                    icon: Icon(
                      CarbonIcons.copy,
                      color: Colors.grey[100],
                    ),
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(text: textController.text),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
