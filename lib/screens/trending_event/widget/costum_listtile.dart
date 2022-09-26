import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CostumListTile extends StatelessWidget {
  final String? title;
  final String? subtitle1;
  final String? subtitle2;
  final String? heading;
  final String? image;
  final String buttonText;

  const CostumListTile(
      {required this.title,
      required this.subtitle1,
      required this.subtitle2,
      required this.heading,
      required this.image,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: SvgPicture.asset(
            "assets/addpic.svg",
            height: 20,
          )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  subtitle1!,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  heading!,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  subtitle2!,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Color(0xFFFD9225)),
              child: Text(buttonText),
            ),
          ],
        )
      ],
    );
  }
}
