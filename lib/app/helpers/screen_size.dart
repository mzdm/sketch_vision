import 'package:flutter/material.dart';

/// An extension to get screen [Size]s quickly.
extension ScreenSize on BuildContext {
  /// Gets the width of the screen.
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Gets the height of the screen.
  double get screenHeight => MediaQuery.of(this).size.height;
}
