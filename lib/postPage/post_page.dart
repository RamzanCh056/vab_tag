import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vab_tag/Video/video.dart';
import '../common/top_appbar.dart';
import 'widget/post_panel.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopAppbar(),
            AppBar(
              backgroundColor: const Color(0xffFF9200),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            //Do something with the user input.
                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Color(0xffFF9200),
                                )),
                            hintText: 'Search...',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/mesge.png"),
                            fit: BoxFit.cover)),

                    // ),
                    // backgroundColor: Colors.white10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dropdown.png"),
                            fit: BoxFit.fill)),
                  ),

                ],
              ),
            ),
            Container(
              // height: 290,
              color: Colors.black,
              width: double.infinity,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(Video());
                    },
                    child: Container(
                      height: 170,
                      width: 300,
                      child: Image.asset(
                        "assets/client.jpg",
                        fit: BoxFit.cover,
                      ),
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
                    children: [
                      Expanded(
                        child: ListTile(
                          minLeadingWidth: 1,
                          contentPadding: EdgeInsets.zero,
                          leading: SvgPicture.asset("assets/newlike.svg",
                              height: 25, width: 25),
                          title: Text(
                            "Like",
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: Text("1111"),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          minLeadingWidth: 1,
                          contentPadding: EdgeInsets.zero,
                          leading: SvgPicture.asset(
                            "assets/newcmnt.svg",
                            height: 25,
                            width: 25,
                          ),
                          title: Text(
                            "Comment",
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: Text("321"),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ListTile(
                          minLeadingWidth: 1,
                          contentPadding: EdgeInsets.zero,
                          leading: SvgPicture.asset(
                            "assets/Revibe.svg",
                            height: 25,
                            width: 25,
                          ),
                          title: Text(
                            "Revibed",
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: Text("212"),
                        ),
                      ),
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              color: Color(0xFFFF9200),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
              height: 20,
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
