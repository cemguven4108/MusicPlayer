import 'package:flutter/material.dart';
import 'package:music_player/pages/drawer/drawer_body.dart';
import 'package:music_player/pages/drawer/drawer_head.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Drawer(
        width: size.width * 0.8,
        child: const Column(
          children: <Widget>[
            DrawerHead(),
            DrawerBody(),
          ],
        ),
      );
  }
}