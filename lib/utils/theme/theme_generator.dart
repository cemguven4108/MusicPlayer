import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_player/utils/theme/android_theme.dart';
import 'package:music_player/utils/theme/ios_theme.dart';

class ThemeGenerator {
  const ThemeGenerator._();

  static ThemeData of(BuildContext context) {
    if (kIsWeb) {
      return AndroidTheme.light();
    }

    if (Platform.isAndroid || Platform.isWindows) {
      return Theme.of(context).brightness == Brightness.light
          ? AndroidTheme.light()
          : AndroidTheme.dark();
    }

    return Theme.of(context).brightness == Brightness.light
        ? IosTheme.light()
        : IosTheme.dark();
  }
}
