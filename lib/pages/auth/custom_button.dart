import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.icon,
    required this.title,
    this.color,
    this.onTap,
    this.height,
    this.width,
    this.borderThickness,
  });

  final Widget? icon;
  final Text title;
  final Color? color;
  final double? height;
  final double? width;
  final double? borderThickness;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? size.width * 0.8,
        height: height ?? size.height * 0.05,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: color == null
              ? Border.all(
                  color: Colors.white54,
                  width: borderThickness ?? 0.3,
                )
              : null,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            if (icon != null)
              Positioned(
                left: 20,
                child: icon!,
              ),
            title,
          ],
        ),
      ),
    );
  }
}
