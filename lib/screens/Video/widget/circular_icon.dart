import 'package:flutter/material.dart';
class CircularIcon extends StatelessWidget {
  final Widget ? child;
  const CircularIcon({this.child,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade900),
      child: child,
    );
  }
}