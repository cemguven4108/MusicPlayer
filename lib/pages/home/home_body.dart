import 'package:flutter/material.dart';
import 'package:music_player/core/widgets/custom_tab_bar.dart';
import 'package:music_player/models/enums/navigation_card_item.dart';
import 'package:music_player/models/enums/tab_bar_item.dart';
import 'package:music_player/pages/home/home_navigation_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildNavigationCards(context, size),
          DefaultTabController(
            length: TabBarItem.values.length,
            initialIndex: 0,
            child: Expanded(
              child: ListView(
                children: <Widget>[
                  buildTabBar(),
                  buildTabBarViews(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavigationCards(BuildContext context, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: NavigationCardItem.values.map((item) {
        return HomeNavigationCard(
          title: item.toString(),
          color: item.toColor(),
          icon: item.toIcon(),
        );
      }).toList(),
    );
  }

  Widget buildTabBar() {
    return CustomTabBar(
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      tabs: [
        ...TabBarItem.values.map(
          (item) {
            return Tab(
              text: item.toString(),
            );
          },
        ),
      ],
    );
  }

  Widget buildTabBarViews() {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: TabBarView(
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                color: Colors.red,
              );
            },
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
