// ignore_for_file: public_member_api_docs
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide ThemeData;
import 'package:sketch_vision_app/app/theme/colors.dart';
import 'package:sketch_vision_app/nav_pane/view/nav_pane_page.dart';

class App extends StatelessWidget {
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
