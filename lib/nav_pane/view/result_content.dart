import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart'
    hide Colors, IconButton, ButtonThemeData, ThemeData;

/// {@template single_page_content}
/// Content of a page which contains 1 view.
/// {@endtemplate}
class SinglePageContent extends StatelessWidget {
  /// {@macro single_page_content}
  const SinglePageContent({
    Key? key,
    required this.content,
    this.title,
  }) : super(key: key);

  /// The content of the page to be displayed.
  final Widget content;

  /// The title of [NavigationAppBar].
  ///
  /// If `null`, then it is not shown.
  final String? title;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        title: title == null ? null : Text(title!),
        leading: _buildBackButton(context),
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

/// {@template double_page_content}
/// Content of a page which contains 2 views, next to each other, in ratio 2:1.
/// {@endtemplate}
class DoublePageContent extends StatelessWidget {
  /// {@macro double_page_content}
  const DoublePageContent({
    Key? key,
    this.isFromNavigator = true,
    required this.contentLeft,
    required this.contentRight,
    this.title,
  }) : super(key: key);

  /// Whether the transition comes from a [Navigator].
  ///
  /// If `true` then the [NavigationAppBar] is shown, else hidden.
  final bool isFromNavigator;

  /// The content of the page to be displayed on the _left_ side.
  final Widget contentLeft;

  /// The content of the page to be displayed on the _right_ side.
  final Widget contentRight;

  /// The title of [NavigationAppBar].
  ///
  /// If `null`, then it is not shown.
  final String? title;

  @override
  Widget build(BuildContext context) {
    return isFromNavigator
        ? NavigationView(
            appBar: NavigationAppBar(
              title: title == null ? null : Text(title!),
              leading: _buildBackButton(context),
            ),
            pane: NavigationPane(
              displayMode: PaneDisplayMode.compact,
            ),
            content: NavigationBody(
              index: 0,
              children: [
                ScaffoldPage(
                  content: _buildLayout(),
                ),
              ],
            ),
          )
        : _buildLayout();
  }

  Widget _buildLayout() {
    return Row(
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
    );
  }
}

IconButton _buildBackButton(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.arrow_back_sharp),
    onPressed: (ModalRoute.of(context)?.canPop ?? false)
        ? () => Navigator.maybePop(context)
        : null,
    style: ButtonThemeData(
      margin: EdgeInsets.zero,
      scaleFactor: 1.0,
      decoration: ButtonState.resolveWith((states) {
        if (states.isDisabled) states = {};
        return BoxDecoration(
          color: ButtonThemeData.uncheckedInputColor(
            FluentTheme.of(context),
            states,
          ),
        );
      }),
    ),
    iconTheme: (state) {
      return IconThemeData(
        size: 22.0,
        color: _iconButtonColor(
          FluentTheme.of(context).brightness,
          state,
        ),
      );
    },
  );
}

Color _iconButtonColor(Brightness brightness, Set<ButtonStates> states) {
  late Color color;
  if (brightness == Brightness.light) {
    if (states.isPressing) {
      color = const Color(0xFF000000).withOpacity(0.75);
    } else if (states.isHovering) {
      color = const Color(0xFF000000).withOpacity(0.5);
    } else {
      color = const Color(0xFF000000);
    }
    return color;
  } else {
    if (states.isPressing) {
      color = const Color(0xFF666666);
    } else if (states.isHovering) {
      color = Colors.grey[170];
    } else {
      color = const Color(0xFF333333);
    }
    return color;
  }
}
