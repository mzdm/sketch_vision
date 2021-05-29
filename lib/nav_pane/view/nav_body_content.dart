// ignore_for_file: public_member_api_docs
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sketch_vision_app/app/helpers/screen_size.dart';

class NavigationBodyContent extends StatelessWidget {
  const NavigationBodyContent({
    Key? key,
    this.title = '',
    required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: Text(
          title,
          style: const TextStyle(fontSize: 30.0),
        ),
      ),
      content: SizedBox(
        width: context.screenWidth,
        child: content,
      ),
    );
  }
}
