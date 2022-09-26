import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/custom_list_tile.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          CustomListTile(
            title: "Haritla",
            likeImage: 'assets/like.svg',
            likeTitle: "23K people",
            carImage: 'assets/lable.svg',
            carTitle: "Cars and Vehicles",
            child: SvgPicture.asset(
              'assets/editnotes.svg',
            ),
          ),
          CustomListTile(
            title: "Haritla",
            likeImage: 'assets/like.svg',
            likeTitle: "23K people",
            carImage: 'assets/lable.svg',
            carTitle: "Cars and Vehicles",
            child: SvgPicture.asset(
              'assets/editnotes.svg',
            ),
          ),
          CustomListTile(
            title: "Haritla",
            likeImage: 'assets/like.svg',
            likeTitle: "23K people",
            carImage: 'assets/lable.svg',
            carTitle: "Cars and Vehicles",
            child: SvgPicture.asset(
              'assets/editnotes.svg',
            ),
          ),
          Spacer(),
          Container(
            color: Color(0xFFFF9200),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Market Place\nTerms",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Your\nWishlist",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Refund\nPolicy",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "On Sale\nItems",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start\nSelling",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Find Help &\nSupport",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text("C 2022 VibeTag"),
                Spacer(),
                Text("C 2022 VibeTag"),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
