import 'package:flutter/material.dart';
import 'package:music_player/pages/auth/custom_button.dart';
import 'package:music_player/pages/auth/login/login_page.dart';
import 'package:music_player/pages/auth/register/register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(),
            ),
            buildTitle(),
            buildButtons(context),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return const Expanded(
      flex: 1,
      child: Text.rich(
        TextSpan(
          text: "Millions of songs.",
          children: [
            TextSpan(text: "\nFree on Cpotify."),
          ],
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 35,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget buildButtons(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: <Widget>[
          CustomButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
            color: const Color.fromARGB(255, 40, 255, 40),
            title: const Text(
              "Sign up free",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const CustomButton(
            icon: Icon(Icons.abc),
            title: Text(
              "Continue with Google",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const CustomButton(
            icon: Icon(Icons.ac_unit),
            title: Text(
              "Continue with Facebook",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          CustomButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            color: Colors.transparent,
            title: const Text(
              "Log in",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
