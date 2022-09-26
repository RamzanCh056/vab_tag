import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#151515'),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: HexColor('#2c2c2c'),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap:(){
                                Get.back();
                      },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: HexColor('#b2b2b2'),
                              ),
                            ),
                            Container(
                              width: 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Aa',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: HexColor('#b2b2b2'),
                                    ),
                                  ),
                                  Icon(
                                    Icons.add_a_photo_outlined,
                                    color: HexColor('#b2b2b2'),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.troubleshoot_rounded,
                                    color: HexColor('#b2b2b2'),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    size: 30,
                                    color: HexColor('#b2b2b2'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 120,
                              decoration: BoxDecoration(
                                  color: HexColor('#1d1d1d'),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 17),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 13),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Draw',
                                            style: TextStyle(
                                                color: HexColor('#797979'),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.draw,
                                            size: 17,
                                            color: HexColor('#797979'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: HexColor('#2c2c2c'),
                                      thickness: 2,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 13),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Save',
                                            style: TextStyle(
                                                color: HexColor('#797979'),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.download,
                                            size: 17,
                                            color: HexColor('#797979'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#2c2c2c'),
                                borderRadius: BorderRadius.circular(80)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 2,
                                        color: HexColor('#464646'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Your Story',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#2c2c2c'),
                                borderRadius: BorderRadius.circular(80)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor('#30944a'),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 2,
                                        color: HexColor('#464646'),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Close Friends',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: HexColor('#b2b2b2'),
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#2c2c2c")),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
