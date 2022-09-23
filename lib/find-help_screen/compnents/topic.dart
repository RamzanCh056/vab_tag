import 'package:flutter/material.dart';
class Topic extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const Topic({
    Key? key,
    this.icon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Icon(
            icon!,
            size: 30,
          ),
          SizedBox(
            height: 20,
          ),
          Text(title!)
        ],
      ),
    );
  }
}