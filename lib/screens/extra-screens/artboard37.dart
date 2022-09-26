import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/screens/extra-screens/create_ad_mobile.dart';
import 'package:vab_tag/screens/home/drawer.dart';

class ArtBoard37 extends StatefulWidget {
  ArtBoard37({Key? key}) : super(key: key);

  @override
  State<ArtBoard37> createState() => _ArtBoard37State();
}

class _ArtBoard37State extends State<ArtBoard37> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Draweer(),
      appBar: AppBar(
        backgroundColor: Color(0xffFF9200),
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
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xffFF9200),
                      ),
                      hintText: 'Search...',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
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
            InkWell(
              onTap: () {},
              child: Container(
                child: Image.asset(
                  'images/Exclusion 1.PNG',
                  height: 29,
                  fit: BoxFit.fill,
                ),
                // backgroundColor: Colors.white10,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Get.to(CreateAdMobile());
              },
              child: Container(
                child: Image.asset(
                  'images/Path 2.png',
                  height: 25,
                  fit: BoxFit.fill,
                ),
                // backgroundColor: Colors.white10,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 1.0,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset('images/Group 718.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Hot Chat'),
                        Spacer(),
                        Image.asset('images/Exclusion 2.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('create topic'),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Expanded(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: TextField(
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Color(0xffFF9200),
                                  ),
                                  hintText: 'Search...',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.04,
                ),
                child: Text(
                  "Categories",
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: AssetImage("images/image7.png"),
                      height: height * 0.12,
                      width: width * 0.15,
                      fit: BoxFit.fill,
                    ),
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
                              "Upload a video",
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
                image: AssetImage("images/Mask Group 332.png"),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                image: AssetImage("images/Mask Group 325.png"),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                image: AssetImage("images/Mask Group 326.png"),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
