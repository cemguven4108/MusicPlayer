import 'package:flutter/material.dart';
import 'package:music_player/models/enums/navigation_card_item.dart';
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
          buildNavigationCards(size),
        ],
      ),
    );
  }

  Widget buildNavigationCards(Size size) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: NavigationCardItem.values.map((item) {
          return HomeNavigationCard(
            title: item.toString(),
            color: item.toColor(),
            icon: item.toIcon(),
          );
        }).toList(),
      ),
    );
  }
}
