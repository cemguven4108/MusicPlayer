import 'package:flutter/material.dart';
import 'package:music_player/pages/home/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: HomePage(),
    ),
  );
}
