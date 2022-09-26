import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/common/appbar.dart';

import '../callApp/callApp.dart';
import '../postPage/widget/post_panel.dart';

class news extends StatelessWidget {
  const news({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonAppBar(),
            GestureDetector(
              onTap: () {
                Get.to(callApp());
              },
              child: Container(
                // height: 290,
                color: Colors.black,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                        Container(
                          width: 260,
                          height: 60,
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.orangeAccent,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      child: Image.asset(
                        "images/client.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 2,
                      color: Colors.grey.withOpacity(0.6),
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.volume_up,
                            color: Colors.grey,
                          ),
                          Container(
                            width: 100,
                            child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 5,
                                  ),
                                  thumbColor: Colors.white,
                                  trackHeight: 2,
                                ),
                                child: Slider(
                                  value: 100,
                                  onChanged: (value) {},
                                  min: 0.0,
                                  max: 100.0,
                                  activeColor: Colors.grey,
                                  inactiveColor: Colors.grey.shade700,
                                )),
                          ),
                          Spacer(),
                          Icon(
                            Icons.fullscreen_sharp,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.fullscreen_exit,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Row(
                      children: [
                        Text("Breaking News"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(color: Colors.indigo),
                        )
                      ],
                    ),
                    subtitle: Text(
                      "1 min",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_drop_down),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "To master a skill, the most important teacher will be practice. So now that you've completed the course, ",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ListTile(
                          minLeadingWidth: 1,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.thumb_up),
                          title: Text("Like"),
                          subtitle: Text("1111"),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          minLeadingWidth: 1,
                          leading: Icon(Icons.mode_comment),
                          title: Text("Comment"),
                          subtitle: Text("342"),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          minLeadingWidth: 1,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                          subtitle: Text("300"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "You may Like",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (_, index) {
                  return PostPanel();
                }),
          ],
        ),
      ),
    );
  }
}
