// ignore_for_file: public_member_api_docs
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:sketch_vision_app/navigation_pane/view/navigation_pane_page.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPanePage(),
    );
  }
}
