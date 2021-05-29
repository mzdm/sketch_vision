import 'package:flutter/material.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: const AppBarTheme(
          color: SketchColors.nav_body_content,
          elevation: 0.0,
        ),
      ),
      child: const LicensePage(
        applicationName: 'Sketch Vision App',
        applicationLegalese: 'Matěj Žídek\n\n4IZ231',
      ),
    );
  }
}
