import 'package:flutter/material.dart';
import 'package:music_player/pages/home/bottom_navbar/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            ListView(
              children: <Widget>[],
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavbar(),
      ),
    );
  }
}
