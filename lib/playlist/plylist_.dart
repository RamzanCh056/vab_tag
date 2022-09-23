import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;

  const Playlist({this.image, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage(image!),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0xFF5A5A5A),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(subTitle!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}