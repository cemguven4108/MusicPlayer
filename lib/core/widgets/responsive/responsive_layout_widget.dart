import 'package:flutter/material.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  const ResponsiveLayoutWidget({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
  });

  final Widget mobileBody;
  final Widget tabletBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileBody;
        } else {
          return tabletBody;
        }
      },
    );
  }
}
