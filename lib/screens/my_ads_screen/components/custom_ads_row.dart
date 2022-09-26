import 'package:flutter/material.dart';

class CustomAdsRow extends StatelessWidget {
  final String? title;
  final Color? color;
  final Widget? Torch;
  final Widget? Waves;
  final Widget? Stardom;

  const CustomAdsRow({
    Key? key,
    this.title,
    this.color = const Color(0xFFeeeeee),
    this.Torch,
    this.Waves,
    this.Stardom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(child: Text(title!)),
          Expanded(
            child: Torch!,
          ),
          Expanded(child: Waves!),
          Expanded(child: Stardom!)
        ],
      ),
    );
  }
}