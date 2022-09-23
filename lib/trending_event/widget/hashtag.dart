import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HashTag extends StatelessWidget {
  final String ? title;
  final String ? subtitle;
  const HashTag({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        SvgPicture.asset(
          "assets/arrow.svg",
          width: 10.5,
          height: 9.5,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              title!,
              style: TextStyle(color: Color(0xFFFD9225)),
            ),
            Text(
              subtitle!,
              style: TextStyle(
                  color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}