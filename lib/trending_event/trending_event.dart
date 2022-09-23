import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vab_tag/product_Screen/productScreen.dart';
import 'package:vab_tag/trending_event/widget/costum_listtile.dart';
import 'package:vab_tag/trending_event/widget/hashtag.dart';
import 'package:vab_tag/trending_event/widget/latest_product.dart';
import 'package:vab_tag/trending_event/widget/people_to_follow.dart';
import 'package:vab_tag/trending_event/widget/suggest_group.dart';
import 'package:vab_tag/trending_event/widget/world_news.dart';
import '../common/top_appbar.dart';
import '../Store_Home/widget/top_appbar.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: ListView(
        children: [
          //title
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
          // CostumeAppBar(),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Get.to(ProductPage());
            },
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  "assets/arrow.svg",
                  width: 28.5,
                  height: 16.5,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "What is on Trending",
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "World news",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          WorldNews(
            title:
                "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
            image: "assets/arrow.svg",
            subtitle1: "By",
            heading: "Breaking News",
            subtitle2: "4d",
          ),
          Divider(endIndent: 15, indent: 15),
          WorldNews(
            title:
                "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
            image: "assets/arrow.svg",
            subtitle1: "By",
            heading: "Breaking News",
            subtitle2: "4d",
          ),
          Divider(endIndent: 15, indent: 15),
          WorldNews(
            title:
                "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
            image: "assets/arrow.svg",
            subtitle1: "By",
            heading: "Breaking News",
            subtitle2: "4d",
          ),
          Divider(endIndent: 15, indent: 15),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Trending",
              style: TextStyle(fontSize: 19),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HashTag(
                title: "#mmoexp",
                subtitle: "44 Post",
              ),
              HashTag(
                title: "#Breaking news",
                subtitle: "12 Post",
              ),
              HashTag(
                title: "#rsorder",
                subtitle: "11 Post",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HashTag(
                title: "#Covid",
                subtitle: "11 Post",
              ),
              HashTag(
                title: "#Ours",
                subtitle: "12 Post",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Popular Blog Today",
              style: TextStyle(fontSize: 19),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CostumListTile(
              title:
                  "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
              subtitle1: "By",
              subtitle2: "4d",
              heading: "Breaking News",
              image: "assets/arrow.svg",
              buttonText: "15k+ views"),
          Divider(endIndent: 15, indent: 15),
          CostumListTile(
              title:
                  "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
              subtitle1: "By",
              subtitle2: "4d",
              heading: "Breaking News",
              image: "assets/arrow.svg",
              buttonText: "15k+ views"),
          Divider(endIndent: 15, indent: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Most Recent Articles",
              style: TextStyle(fontSize: 19),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CostumListTile(
              title:
                  "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
              subtitle1: "By",
              subtitle2: "4d",
              heading: "Breaking News",
              image: "assets/arrow.svg",
              buttonText: "15k+ views"),
          Divider(endIndent: 15, indent: 15),
          CostumListTile(
              title:
                  "Boris Johnson resigns:\nWhat happens now? Leadership contest \ntimetable in full | #breakingn…",
              subtitle1: "By",
              subtitle2: "4d",
              heading: "Breaking News",
              image: "assets/arrow.svg",
              buttonText: "15k+ views"),
          Divider(endIndent: 15, indent: 15),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Peoples to follow",
              style: TextStyle(fontSize: 19),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          PeopleToFollow(
            title: "Madilyn Schiller",
            subTitle: "@abins_204",
            image: "assets/addpic.svg",
            buttonText: "Follow",
          ),
          Divider(endIndent: 15, indent: 15),
          PeopleToFollow(
            title: "Madilyn Schiller",
            subTitle: "@abins_204",
            image: "assets/addpic.svg",
            buttonText: "Follow",
          ),
          Divider(endIndent: 15, indent: 15),
          PeopleToFollow(
            title: "Madilyn Schiller",
            subTitle: "@abins_204",
            image: "assets/addpic.svg",
            buttonText: "Follow",
          ),
          Divider(endIndent: 15, indent: 15),
          PeopleToFollow(
            title: "Madilyn Schiller",
            subTitle: "@abins_204",
            image: "assets/addpic.svg",
            buttonText: "Follow",
          ),
          Divider(endIndent: 15, indent: 15),
          SizedBox(
            height: 30,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Page you may like",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      style: TextStyle(fontSize: 15, color: Color(0xFF3B70FF)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (_, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 110,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Color(0xFFE6E6E6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/addpic.svg",
                                  color: Colors.white,
                                  height: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: SvgPicture.asset("assets/car.svg"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Car Love"),
                                    Text(
                                      "4563 peoples like this",
                                      style: TextStyle(
                                          color: Color(0xFF3B70FF),
                                          fontSize: 8),
                                    ),
                                    Text(
                                      "Live Style",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 17,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFFD9225)),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Like Page",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Icon(
                                        Icons.thumb_up,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 294,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Suggest Groups",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "See more",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF3B70FF)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      children: [
                        SuggestGroup(
                            image: "assets/desk.svg",
                            title: "Design Disk",
                            buttonText: "Join"),
                        SuggestGroup(
                            image: "assets/fitnes.svg",
                            title: "Fitness goals",
                            buttonText: "Join"),
                        SuggestGroup(
                            image: "assets/walk.svg",
                            title: "Morning walk",
                            buttonText: "Join"),
                      ],
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              "Invite your friends",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email here...",
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFD9225)),
                  child: Stack(
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "assets/arrowline.svg",
                          height: 15,
                          width: 15,
                        ),
                      )
                    ],
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 460,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Latest Products",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      style: TextStyle(fontSize: 15, color: Color(0xFF3B70FF)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: LatestProduct(
                        image: "assets/addpic.svg",
                        title: "Volvo Break Hose - Rear \nLeft Or ..",
                        price: "£9.70",
                      ),
                    ),
                    Expanded(
                      child: LatestProduct(
                        image: "assets/addpic.svg",
                        title: "Volvo Break Hose - Rear \nLeft Or ..",
                        price: "£9.70",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: LatestProduct(
                        image: "assets/addpic.svg",
                        title: "Volvo Break Hose - Rear \nLeft Or ..",
                        price: "£9.70",
                      ),
                    ),
                    Expanded(
                      child: LatestProduct(
                        image: "assets/addpic.svg",
                        title: "Volvo Break Hose - Rear \nLeft Or ..",
                        price: "£9.70",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 430,
            width: 392,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/car.svg",
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Sponsored"),
                      Spacer(),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF0F0F0),
                          ),
                          child: Icon(
                            Icons.refresh_sharp,
                            color: Color(0xFFFD9225),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 260,
                  width: double.infinity,
                  color: Color(0xFFE6E6E6),
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/addpic.svg",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text("Apple Watch Series"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Text(
                    "The most durable Apple Watch ever. Hard Knock",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "Apple.com",
                    style: TextStyle(color: Color(0xFFFD9225)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Color(0xFF707070),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "c 2020 Vibetag",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "Language",
                  style: TextStyle(fontSize: 18, color: Color(0xFF3B3B3B)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "About",
                  style: TextStyle(color: Color(0xFF3B55FF)),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Blog",
                  style: TextStyle(color: Color(0xFF3B55FF)),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Verification",
                  style: TextStyle(color: Color(0xFF3B55FF)),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "More",
                  style: TextStyle(color: Color(0xFF3B55FF)),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
