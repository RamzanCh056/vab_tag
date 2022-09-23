import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vab_tag/Campaigns/campaigns.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(Campaigns());
              },
              child: Container(
                height: 600,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF2C2C2C),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          "Aa",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/emojicamera.svg",
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/star.svg",
                          color: Colors.white,
                        ),
                        Theme(
                          data: ThemeData(cardColor: Color(0xFF2C2C2C)),
                          child: PopupMenuButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                              itemBuilder: (_) {
                                return [
                                  PopupMenuItem<Widget>(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Draw",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SvgPicture.asset(
                                          "assets/draw.svg",
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem<Widget>(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Save",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.save_alt_rounded,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ];
                              }),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Your Story
                  Container(
                    width: 135,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF4A4A4A)),
                          child: Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your Story",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  //Close Friends
                  Container(
                    width: 140,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFF2C2C2C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF4A4A4A)),
                          child: Container(
                              height: 40,
                              width: 40,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF359A4C),
                              ),
                              child: Icon(
                                Icons.star_rate_rounded,
                                size: 30,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Close Friends",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2C2C2C),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
