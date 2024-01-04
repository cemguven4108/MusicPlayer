import 'package:flutter/material.dart';
import 'package:music_player/pages/drawer/drawer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.black87,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => _key.currentState!.openDrawer(),
            icon: const Icon(
              Icons.multiple_stop_outlined,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
              ),
            ),
          ],
        ),
        drawer: const DrawerPage(),
      ),
    );
  }
}