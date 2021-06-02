import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide ThemeData;
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/nav_pane/view/nav_pane_page.dart';

/// {@template app}
/// Defines initial widgets and app theming.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: SketchColors.nav_body_content,
      ),
      home: const NavigationPanePage(),
    );
  }
}
