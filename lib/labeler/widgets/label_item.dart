import 'package:fluent_ui/fluent_ui.dart';

class LabelItem extends StatelessWidget {
  const LabelItem({
    Key? key,
    required this.name,
    required this.score,
  }) : super(key: key);

  final String name;
  final double score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 15.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 20,
                  child: Text(name),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: SizedBox(
                    height: 20,
                    child: Text(score.toString()),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: SizedBox(
                width: double.infinity,
                child: ProgressBar(
                  value: (score * 100).clamp(0, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
