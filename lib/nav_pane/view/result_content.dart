import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class ResultContent extends StatelessWidget {
  const ResultContent({
    Key? key,
    required this.content,
    this.title,
  }) : super(key: key);

  final Widget content;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: title == null ? null : Text(title!),
      ),
      pane: NavigationPane(
        displayMode: PaneDisplayMode.compact,
      ),
      content: NavigationBody(
        index: 0,
        children: [
          ScaffoldPage(
            content: content,
          ),
        ],
      ),
    );
  }
}
