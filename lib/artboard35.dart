import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/blogs_one.dart';

import 'home/drawer.dart';

class ArtBoard35 extends StatefulWidget {
  ArtBoard35({Key? key}) : super(key: key);

  @override
  State<ArtBoard35> createState() => _ArtBoard35State();
}

class _ArtBoard35State extends State<ArtBoard35> {
  double value1 = 40;
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff323232),
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
                Get.to(BlogsOne());
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.15,
                  width: width * 0.99,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
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
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white10,
                        backgroundImage: AssetImage('images/image4.png'),
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
                              color: Colors.white,
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
                                  color: Color(0xff3b3b3b),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.map_outlined,
                                color: Color(0xff3b3b3b),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff3b3b3b),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.005,
                          ),
                          Text(
                            "Upload a video",
                            style: TextStyle(
                              color: Colors.white,
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
                  width: width * 0.99,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        // bottomLeft: Radius.circular(30.0),
                        // bottomRight: Radius.circular(30.0),
                        ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/Revibe before r.png',
                                height: 20,
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
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "465",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
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
                              Image.asset(
                                'images/new like before.png',
                                height: 20,
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
                                    "Likes",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "465",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
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
                              Image.asset(
                                'images/new like before.png',
                                height: 20,
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
                                    "Dislikes",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "212",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
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
                              Image.asset(
                                'images/New heart befor.png',
                                height: 20,
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
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.005,
                                  ),
                                  Text(
                                    "342",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.05,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white10,
                            backgroundImage:
                                AssetImage('images/Mask Group 336.png'),
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
                                "Jally jin",
                                style: TextStyle(
                                  color: Colors.white,
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
                                      color: Color(0xff3b3b3b),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset('images/Mask Group 333.png'),
                              ),
                              Text(
                                "Wacth Replay",
                                style: TextStyle(
                                  color: Color(0xff3b3b3b),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                          ),
                          Text(
                            '  04',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.thumb_down,
                            color: Colors.white,
                          ),
                          Text(
                            '  0',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          Text(
                            '  06',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'images/Group 740.png',
                            fit: BoxFit.fill,
                            height: 30,
                          ),
                          Column(
                            children: [
                              Text(
                                '  Video Revibed',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '  01',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Divider(thickness: 1, color: Colors.grey),
                      Container(
                        color: Color(0xff2C2C2C),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white10,
                                  backgroundImage:
                                      AssetImage('images/Mask Group 338.png'),
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
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.005,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4 minutes ago ",
                                          style: TextStyle(
                                            color: Color(0xff3b3b3b),
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '  04',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.thumb_down,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '  0',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '  06',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'images/Mask Group 334.png',
                                      ),
                                    ),
                                    Text(
                                      "Wacth Replay",
                                      style: TextStyle(
                                        color: Color(0xff3b3b3b),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade800,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Upload Video',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                                Slider(
                                    activeColor: Colors.orange,
                                    inactiveColor: Colors.grey.shade600,
                                    value: value1,
                                    min: 0,
                                    max: 100,
                                    onChanged: (value) =>
                                        setState(() => this.value1 = value)),
                                Spacer(),
                                MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    color: Colors.grey.shade600,
                                    onPressed: () {},
                                    child: Text(
                                      'Send Replay',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text('Upload Video',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 10,
                          ),
                          Text('No file choosen',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.normal)),
                          Spacer(),
                          MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Colors.orange,
                              onPressed: () {},
                              child: Text(
                                'Send Replay',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
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
