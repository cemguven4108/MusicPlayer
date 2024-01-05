import 'package:flutter/material.dart';

class AndroidTheme {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      tabBarTheme: const TabBarTheme(
        indicatorColor: Colors.deepPurple,
        dividerColor: Colors.transparent,
        labelStyle: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black54,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}
