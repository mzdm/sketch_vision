import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;

class SinglePageContent extends StatelessWidget {
  const SinglePageContent({
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

class DoublePageContent extends StatelessWidget {
  const DoublePageContent({
    Key? key,
    required this.contentLeft,
    required this.contentRight,
    this.title,
  }) : super(key: key);

  final Widget contentLeft;
  final Widget contentRight;
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
            content: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 30.0),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: contentLeft,
                  ),
                ),
                const SizedBox(width: 30.0),
                Flexible(
                  flex: 1,
                  child: contentRight,
                ),
                const SizedBox(width: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
