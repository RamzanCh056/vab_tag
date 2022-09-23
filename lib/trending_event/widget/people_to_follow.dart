import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PeopleToFollow extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? buttonText;

  const PeopleToFollow(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: SvgPicture.asset(
          image!,
          height: 20,
        )),
      ),
      title: Text(title!),
      subtitle: Text(subTitle!),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: Color(0xFFFD9225)),
        child: Text(buttonText!),
      ),
    );
  }
}
