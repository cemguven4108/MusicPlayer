import 'package:flutter/material.dart';

enum NavigationCardItem {
  favorite,
  playlist,
  recent;

  @override
  String toString() {
    switch (this) {
      case NavigationCardItem.favorite:
        return "Favorites";
      case NavigationCardItem.playlist:
        return "Playlists";
      case NavigationCardItem.recent:
        return "Recent";
    }
  }

  IconData toIcon() {
    switch (this) {
      case NavigationCardItem.favorite:
        return Icons.star_purple500_outlined;
      case NavigationCardItem.playlist:
        return Icons.playlist_play_outlined;
      case NavigationCardItem.recent:
        return Icons.access_time;
    }
  }

  Color toColor() {
        switch (this) {
      case NavigationCardItem.favorite:
        return Colors.deepPurple;
      case NavigationCardItem.playlist:
        return Colors.green.shade900;
      case NavigationCardItem.recent:
        return Colors.amber.shade900;
    }
  }
}
