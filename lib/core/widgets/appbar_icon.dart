import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    required this.icon,
    super.key,
    this.size = 50,
    this.iconSize = 25,
    this.onPressed,
  });
  final IconData? icon;
  final double size;
  final double iconSize;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: size,
        width: size,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white30,
            shape: BoxShape.circle,
          ),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: iconSize,
              )),
        ),
      ),
    );
  }
}
