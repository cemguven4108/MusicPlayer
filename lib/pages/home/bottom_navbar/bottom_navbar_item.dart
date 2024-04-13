import 'package:flutter/material.dart';

enum BottomNavbarItem {
  home,
  search,
  library,
  premium;

  @override
  String toString() {
    switch (this) {
      case BottomNavbarItem.home:
        return "Home";
      case BottomNavbarItem.search:
        return "Search";
      case BottomNavbarItem.library:
        return "Library";
      case BottomNavbarItem.premium:
        return "Premium";
    }
  }

  Widget toIcon() {
    switch (this) {
      case BottomNavbarItem.home:
        return const Icon(Icons.home);
      case BottomNavbarItem.search:
        return const Icon(Icons.search);
      case BottomNavbarItem.library:
        return const Icon(Icons.library_books);
      case BottomNavbarItem.premium:
        return const Icon(Icons.workspace_premium);
    }
  }
}
