import 'package:flutter/material.dart';
class PlayList extends StatelessWidget {
  final String? image;
  final String? title;

  const PlayList({
    Key? key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image!), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFBEBEBE),
            ),
          )
        ],
      ),
    );
  }
}