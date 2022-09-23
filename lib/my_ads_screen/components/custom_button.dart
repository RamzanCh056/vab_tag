import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final Color? color;
  final String? title;
  final VoidCallback? onTap;

  const CustomButton({this.color, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap!,
      child: Container(margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}