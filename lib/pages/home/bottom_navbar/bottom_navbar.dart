import 'package:flutter/material.dart';
import 'package:music_player/pages/home/bottom_navbar/bottom_navbar_item.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 50,
      currentIndex: currentIndex,
      iconSize: 25,
      selectedFontSize: 12,
      selectedLabelStyle: const TextStyle(
        color: Colors.white,
      ),
      selectedItemColor: Colors.white,
      unselectedFontSize: 12,
      unselectedLabelStyle: const TextStyle(
        color: Colors.white,
      ),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      items: [
        ...BottomNavbarItem.values.map((item) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: item.toString(),
            icon: item.toIcon(),
          );
        }),
      ],
    );
  }
}
