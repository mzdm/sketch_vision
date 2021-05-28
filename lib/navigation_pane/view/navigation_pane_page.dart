// ignore_for_file: public_member_api_docs
import 'package:carbon_icons/carbon_icons.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/theme/colors.dart';

class NavigationPanePage extends StatefulWidget {
  const NavigationPanePage({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationPanePageState createState() => _NavigationPanePageState();
}

class _NavigationPanePageState extends State<NavigationPanePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: const NavigationAppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SketchColors.nav_body,
      ),
      content: NavigationBody(
        index: selectedIndex,
        children: [
          InputPage(),
          AboutApp(),
          AboutApp(),
        ],
      ),
      pane: NavigationPane(
        displayMode: PaneDisplayMode.compact,
        selected: selectedIndex,
        onChanged: (i) => setState(() => selectedIndex = i),
        items: [
          PaneItem(
            icon: const Icon(CarbonIcons.drop_photo_filled),
            title: 'Vybrat obrázek',
          ),
          PaneItem(
            icon: const Icon(CarbonIcons.paint_brush),
            title: 'Sketch',
          ),
        ],
        footerItems: [
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(CarbonIcons.information),
            title: 'O aplikaci',
          ),
        ],
      ),
    );
  }
}

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SketchColors.nav_body,
    );
  }
}

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SketchColors.nav_body,
    );
  }
}


