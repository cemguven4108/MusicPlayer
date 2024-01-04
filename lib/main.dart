import 'package:flutter/material.dart';
import 'package:music_player/pages/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    ),
  );
}