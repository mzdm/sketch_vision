import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/helpers/screen_size.dart';
import 'package:sketch_vision_app/nav_pane/view/nav_pane_page.dart';

/// {@template navigation_body_content}
/// Wrapper widget for the pages in the [NavigationPanePage], with typical
/// [PageHeader].
/// {@endtemplate}
class NavigationBodyContent extends StatelessWidget {
  /// {@macro navigation_body_content}
  const NavigationBodyContent({
    Key? key,
    this.title = '',
    this.commandBar,
    required this.content,
  }) : super(key: key);

  /// [PageHeader] title.
  final String title;

  /// Action(s) above the page [content].
  final Widget? commandBar;

  /// Content of the page.
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: Text(
          title,
          style: const TextStyle(fontSize: 30.0),
        ),
        commandBar: commandBar,
      ),
      content: SizedBox(
        width: context.screenWidth,
        child: content,
      ),
    );
  }
}
