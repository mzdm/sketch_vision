import 'package:built_collection/built_collection.dart';
import 'package:ibm_apis/visual_recognition.dart';

/// Sorts [data] from the highest score to the lowest score.
BuiltList<ClassResult> sortByScore(BuiltList<ClassifierResult> data) {
  if (data.isEmpty) {
    return BuiltList<ClassResult>();
  }
  final builder = data.first.classes.toBuilder()
    ..sort((a, b) => a.score.compareTo(b.score))
    ..reverse();
  return builder.build();
}
