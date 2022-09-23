import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class LatestProduct extends StatelessWidget {
  final String? title;
  final String? price;
  final String? image;

  const LatestProduct(
      {required this.title, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 190,
      width: 182,
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 110,
            width: 170,
            decoration: BoxDecoration(
                color: Color(0xFFE6E6E6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Center(
                child: SvgPicture.asset(
                  image!,
                  height: 30,
                  width: 30,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title!,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            price!,
            style: TextStyle(color: Color(0xFFFD9225)),
          )
        ],
      ),
    );
  }
}