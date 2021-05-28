import 'package:flutter/material.dart';
import 'package:sketch_vision_app/app/app.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (UniversalPlatform.isWindows ||
      UniversalPlatform.isLinux ||
      UniversalPlatform.isMacOS) {
    setWindowTitle('Sketch Vision');
  }
  runApp(const App());
}
