enum TabBarItem {
  songs,
  artists,
  albums,
  folders;

  @override
  String toString() {
    switch (this) {
      case TabBarItem.songs:
        return "Songs";
      case TabBarItem.artists:
        return "Artists";
      case TabBarItem.albums:
        return "Albums";
      case TabBarItem.folders:
        return "Folders";
    }
  }
}
