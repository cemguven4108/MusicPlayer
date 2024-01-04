import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(30),
      height: size.height * 0.25,
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/winXP.jpg"),
              minRadius: 35,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Cem Guven",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
    );
  }
}