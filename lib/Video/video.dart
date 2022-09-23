import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vab_tag/Video/widget/circular_icon.dart';

import '../common/appbar.dart';
import '../common/top_appbar.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Column(
          children: [
            TopAppbar(),
           // CostumeAppBar(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/profile.jpg",
                    ),
                  ),
                  title: Text(
                    "David, Stephen",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle:
                      Text("+14 others", style: TextStyle(color: Colors.white)),
                  trailing: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.,
                      children: [
                        SvgPicture.asset(
                          "assets/list.svg",
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          "assets/setting.svg",
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          "assets/expand.svg",
                          height: 15,
                          width: 15,
                        ),
                      ],
                    ),
                  )),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/img1.png"),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/img2.png"),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/img3.png"),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset("assets/img4.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          height: 250,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/call.png",
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/call2.png",
                            width: 130,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            CircularIcon(
                              child: SvgPicture.asset(
                                "assets/msgicon.svg",
                                height: 10,
                                width: 10,
                                color: Color(0xFFFF9200),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircularIcon(
                              child: SvgPicture.asset(
                                "assets/groupmsgicon.svg",
                                height: 10,
                                width: 10,
                                color: Color(0xFFFF9200),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircularIcon(
                              child: SvgPicture.asset(
                                "assets/groupicon.svg",
                                height: 10,
                                width: 10,
                                color: Color(0xFFFF9200),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircularIcon(
                              child: SvgPicture.asset(
                                "assets/videoicon.svg",
                                color: Color(0xFFFF9200),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircularIcon(
                              child: SvgPicture.asset(
                                "assets/callicon.svg",
                                color: Color(0xFFE33737),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircularIcon(
                              child: SvgPicture.asset(
                                "assets/voicicon.svg",
                                color: Color(0xFFFF9200),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
