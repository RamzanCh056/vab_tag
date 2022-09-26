import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuggestGroup extends StatelessWidget {
  final String ? image;
  final String ? title;
  final String ? buttonText;
  const SuggestGroup({required this.image, required this.title, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          height: 150,
          width: 115,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(image!),
        ),
        Text(title!),
        Container(
          width: 115,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFFD9225)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(buttonText!,style: TextStyle(fontSize: 12),),Icon(Icons.add,size: 20,)],
            ),
          ),
        )
      ],)
    ],);
  }
}
