import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:music_player/pages/home/home_page.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        pageTransitionType: PageTransitionType.fade,
        duration: 5000,
        splash: const Image(
          image: AssetImage(
            "assets/images/spotify-logo.png",
          ),
        ),
        nextScreen: const HomePage(),
      ),
    );
  }
}
