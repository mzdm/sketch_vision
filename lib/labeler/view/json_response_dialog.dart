import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:ibm_apis/visual_recognition.dart';
import 'package:sketch_vision_app/l10n/helpers/locale.dart';
import 'package:sketch_vision_app/labeler/view/labeler_page.dart';
import 'package:sketch_vision_app/nav_pane/view/result_content.dart';

/// {@template response_dialog}
/// A menu action in the [LabelerPage], displays the
/// `IBM Visual Recognition` JSON response.
/// {@endtemplate}
class JsonResponseDialog extends StatefulWidget {
  /// {@macro response_dialog}
  const JsonResponseDialog({
    Key? key,
    required this.classes,
  }) : super(key: key);

  /// List of classified [ClassResult], which contains labels and its scores.
  final BuiltList<ClassResult> classes;

  static FluentPageRoute route(BuiltList<ClassResult> classes) {
    return FluentPageRoute(
      builder: (context) {
        return SinglePageContent(
          title: context.l10n.json_response,
          content: JsonResponseDialog(classes: classes),
        );
      },
    );
  }

  @override
  _JsonResponseDialogState createState() => _JsonResponseDialogState();
}

class _JsonResponseDialogState extends State<JsonResponseDialog> {
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
                  message: context.l10n.copy,
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
