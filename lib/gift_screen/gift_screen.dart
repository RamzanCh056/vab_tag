import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(color: Color(0xFFF1F1F1), boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: Offset(0, 3))
              ]),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/giftIcon.svg',
                        height: 30,
                        width: 30,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Gift",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rphyne",
                          style: TextStyle(
                              color: Colors.orange, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),

                        Text(
                          "Send you a",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Gift",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey.shade300,
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/GiftPhoto.png'),
                  Divider(color: Colors.grey,),
                  Text("Have a great day brother!")
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Go Back",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Send Thanks",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              color: Color(0xFFFF9200),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
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
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(children: [
              Text("C 2022 VibeTag"),
              Spacer(),
              Text("C 2022 VibeTag"),
            ],),),

          ],
        ),
      ),
    );
  }
}
