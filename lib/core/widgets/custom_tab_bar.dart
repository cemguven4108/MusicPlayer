import 'package:flutter/material.dart';
import 'package:music_player/utils/theme/theme_generator.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    this.tabController,
    this.isScrollable = false,
    this.tabAlignment,
    required this.tabs,
  });

  final TabController? tabController;
  final bool isScrollable;
  final TabAlignment? tabAlignment;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: isScrollable,
      tabAlignment: tabAlignment,
      dividerColor: ThemeGenerator.of(context).tabBarTheme.dividerColor,
      indicatorColor: ThemeGenerator.of(context).tabBarTheme.indicatorColor,
      labelStyle: ThemeGenerator.of(context).tabBarTheme.labelStyle,
      unselectedLabelStyle:
          ThemeGenerator.of(context).tabBarTheme.unselectedLabelStyle,
      tabs: tabs,
    );
  }
}
