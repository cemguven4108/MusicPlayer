import 'package:flutter/material.dart';

class IosTheme {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}