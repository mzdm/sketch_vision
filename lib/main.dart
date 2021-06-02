import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketch_vision_app/app/app.dart';
import 'package:sketch_vision_app/app/bloc_observer.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:window_size/window_size.dart' as desktop;

/// Initial exec starting point.
///
/// Defines logging & windows related config.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (UniversalPlatform.isWindows ||
      UniversalPlatform.isLinux ||
      UniversalPlatform.isMacOS) {
    desktop.setWindowTitle('Sketch Vision');
    desktop.setWindowMinSize(const Size(1000, 650));
  }
  Bloc.observer = SimpleBlocObserver();
  EquatableConfig.stringify = false;
  runApp(const App());
}
