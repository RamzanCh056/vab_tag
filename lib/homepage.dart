import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:vab_tag/chat_profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xffff9200),
                height: height * 0.08,
                width: width * 1.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Icon(
                      Icons.menu,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.6,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          hintText: 'Search Here...',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Color(0xffff9200),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage("images/image1.png"),
                        height: height * 0.08,
                        width: width * 0.08,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(ChatProfile());
                      },
                      child: Image(
                        image: AssetImage("images/image2.png"),
                        height: height * 0.03,
                        width: width * 0.07,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Image(
                    image: AssetImage("images/image3.png"),
                    height: height * 0.25,
                    width: width * 1.0,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.21,
                      left: width * 0.81,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 8.0,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.21,
                      left: width * 0.86,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 8.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.21,
                      left: width * 0.91,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 8.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.12,
                width: width * 1.0,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Image(
                      image: AssetImage("images/image4.png"),
                      height: height * 0.065,
                      width: width * 0.12,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          "David Millan",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "@david_milan1",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "United State",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.08,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "386",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Text(
                          "32k",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.04,
                  left: width * 0.04,
                ),
                child: Text(
                  "Moments",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Stack(
                    children: [
                      Image(
                        image: AssetImage("images/image5.png"),
                        height: height * 0.12,
                        width: width * 0.15,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: height * 0.08,
                        width: width * 0.08,
                        margin: EdgeInsets.only(
                          top: height * 0.03,
                          left: width * 0.03,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage("images/image6.png"),
                          height: height * 0.1,
                          width: width * 0.1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Image(
                    image: AssetImage("images/image7.png"),
                    height: height * 0.12,
                    width: width * 0.15,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Image(
                    image: AssetImage("images/image8.png"),
                    height: height * 0.12,
                    width: width * 0.15,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Image(
                    image: AssetImage("images/image9.png"),
                    height: height * 0.12,
                    width: width * 0.15,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Image(
                    image: AssetImage("images/image10.png"),
                    height: height * 0.12,
                    width: width * 0.15,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Image(
                    image: AssetImage("images/image11.png"),
                    height: height * 0.12,
                    width: width * 0.15,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.25,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Image(
                              image: AssetImage("images/image4.png"),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Whats's going on? #Hashtag.. @Mention.. Link..",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 9.0,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Icon(
                              Icons.video_call_rounded,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Icon(
                              Icons.image,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Icon(
                              Icons.emoji_emotions,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.12,
                            ),
                            SizedBox(
                              width: width * 0.77,
                              height: height * 0.01,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Image(
                              image: AssetImage("images/image15.png"),
                              height: height * 0.03,
                              width: width * 0.06,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Text(
                              "Entertainment",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.3,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height * 0.06,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                color: Color(0xfff1f1f1),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Your Feed",
                                    style: TextStyle(
                                      color: Color(0xffafafaf),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage("images/onoff.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  Text(
                                    "All",
                                    style: TextStyle(
                                      color: Color(0xffff9200),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.06,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                color: Color(0xfff1f1f1),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Day",
                                    style: TextStyle(
                                      color: Color(0xffafafaf),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage("images/onoff.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  Text(
                                    "Night",
                                    style: TextStyle(
                                      color: Color(0xffff9200),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Icon(
                              Icons.line_weight,
                              size: 30.0,
                              color: Color(0xffff9200),
                            ),
                            SizedBox(
                              width: width * 0.08,
                            ),
                            Icon(
                              Icons.border_right,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Icon(
                              Icons.image,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Icon(
                              Icons.headphones,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Icon(
                              Icons.rectangle,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Icon(
                              Icons.location_on,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Icon(
                              Icons.logo_dev_outlined,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.15,
                              height: height * 0.01,
                              child: Divider(
                                color: Color(0xffff9200),
                                thickness: 2.0,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.74,
                              height: height * 0.01,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.8,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  hintText: 'Search Here...',
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.search,
                                    color: Color(0xffff9200),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.15,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Image(
                          image: AssetImage("images/image4.png"),
                          height: height * 0.1,
                          width: width * 0.15,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Text(
                              "David Millan",
                              style: TextStyle(
                                color: Color(0xff3b3b3b),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                Text(
                                  "5 minutes ago ",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.map_outlined,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "Change his profile picture",
                              style: TextStyle(
                                color: Color(0xff3b3b3b),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image(
                image: AssetImage("images/image18.png"),
                height: height * 0.3,
                width: width * 1.0,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.emoji_emotions,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "465",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.emoji_emotions,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Disikes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage("images/heart.png"),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Love",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "342",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  "Comment",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "321",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.reviews,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Revibed",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "212",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Image(
                          image: AssetImage("images/image20.png"),
                          height: height * 0.1,
                          width: width * 0.15,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Text(
                              "Janey barker",
                              style: TextStyle(
                                color: Color(0xff3b3b3b),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Row(
                              children: [
                                Text(
                                  "5 minutes ago ",
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.map_outlined,
                                  color: Colors.grey.shade400,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "translate",
                              style: TextStyle(
                                color: Color(0xffb76e01),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.005,
                            ),
                            Text(
                              "Lorum ipsum dolor ipsum once",
                              style: TextStyle(
                                color: Color(0xff3b3b3b),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "again lorum ipsum",
                              style: TextStyle(
                                color: Color(0xff3b3b3b),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image(
                image: AssetImage("images/image19.png"),
                height: height * 0.3,
                width: width * 1.0,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.emoji_emotions,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "465",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.emoji_emotions,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Disikes",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage("images/heart.png"),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Love",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "342",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  "Comment",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "321",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.reviews,
                              color: Colors.black,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Text(
                                  "Revibed",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "212",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
