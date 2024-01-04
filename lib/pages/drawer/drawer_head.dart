import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    super.key,
    this.fullName,
    this.image,
  });

  final String? fullName;
  final String? image;

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
            child: buildUserAvatar(size.width),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              fullName ?? "User",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildUserAvatar(double size) {
    if (image == null) {
      return Icon(
        Icons.person,
        size: size * 0.15,
      );
    }
    return CircleAvatar(
      backgroundImage: AssetImage(image!),
      minRadius: 35,
    );
  }
}
