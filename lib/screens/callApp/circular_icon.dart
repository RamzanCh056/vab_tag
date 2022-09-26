import 'package:flutter/material.dart';
class CircularIcon extends StatelessWidget {
  final IconData ? icon;
  final Color ? color;
  const CircularIcon({this.icon, this.color = Colors.orangeAccent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade900),
      child: Icon(
        icon,
        size: 26,
        color: color,
      ),
    );
  }
}