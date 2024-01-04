import 'package:flutter/material.dart';

enum DrawerItem {
  settings,
  feedback,
  aggrement,
  privacy,
  update;

  @override
  String toString() {
    switch (this) {
      case DrawerItem.settings:
        return "Settings";
      case DrawerItem.feedback:
        return "Feedback";
      case DrawerItem.aggrement:
        return "User Aggrement";
      case DrawerItem.privacy:
        return "Privacy Policy";
      case DrawerItem.update:
        return "Update automatically";
    }
  }

  IconData toIcon() {
    switch (this) {
      case DrawerItem.settings:
        return Icons.settings;
      case DrawerItem.feedback:
        return Icons.chat;
      case DrawerItem.aggrement:
        return Icons.file_copy;
      case DrawerItem.privacy:
        return Icons.file_copy_outlined;
      case DrawerItem.update:
        return Icons.update_outlined;
    }
  }
}
