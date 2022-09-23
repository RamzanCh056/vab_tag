import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/artboard39.dart';

import 'home/drawer.dart';

class ArtBoard26 extends StatefulWidget {
  ArtBoard26({Key? key}) : super(key: key);

  @override
  State<ArtBoard26> createState() => _ArtBoard26State();
}

class _ArtBoard26State extends State<ArtBoard26> {
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
                Get.to(ArtBoard39());
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
          Stack(children: [
            Container(
              child: Column(
                children: [
                  Image.asset('images/Mask Group 246.png'),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Likes',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            Text(
                                              '12s',
                                              style: TextStyle(
                                                  color: Colors.orange),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                                  )
                                ],
                              ),
                              Spacer(),
                              SizedBox(
                                width: 90,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        MaterialButton(
                                          height: 25,
                                          color: Colors.orange,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          onPressed: () {},
                                          child: Text(
                                            'Revibed',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Pending',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '12s',
                                              style: TextStyle(
                                                  color: Colors.orange),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Vibes - TV ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      CircleAvatar(
                                        radius: 10,
                                        child: Icon(
                                          Icons.done,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Followers',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '23s',
                                              style: TextStyle(
                                                  color: Colors.orange),
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '@vibes-Tv ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Vibes-tv',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Response \ntime: ',
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        '4 Mins ',
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.orange),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Invite friends to add Vibes Tv',
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Image.asset('images/Group 558.png'),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'images/tabs.PNG',
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
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
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 45,
                  backgroundImage: AssetImage('images/list.png'),
                )),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: width * 0.99,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage("images/list.png"),
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
                            "Vibes - TV",
                            style: TextStyle(
                              color: Color(0xff3b3b3b),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Create a post",
                            style: TextStyle(
                              color: Color(0xff3b3b3b),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            children: [
                              Text(
                                "1 minutes ago ",
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
                            height: 0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Lovely music\nNot all was as it seems",
                                style: TextStyle(
                                  color: Color(0xff3b3b3b),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\n#Lovemusic",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.music_note_outlined,
                                color: Colors.grey.shade400,
                              ),
                              Icon(
                                Icons.gif_box,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image(
            image: AssetImage("images/Mask Group 283.png"),
            height: height * 0.3,
            width: width * 1.0,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: height * 0.1,
                width: width * 0.99,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Spacer(),
                        Image.asset(
                          'images/new like before.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Like',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  465',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'images/New comment bef.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Comment',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  321',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'images/Revibe before r.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Revibed',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  212',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: width * 0.99,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage("images/list.png"),
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
                            "Vibes - TV",
                            style: TextStyle(
                              color: Color(0xff3b3b3b),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Create a post",
                            style: TextStyle(
                              color: Color(0xff3b3b3b),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            children: [
                              Text(
                                "1 minutes ago ",
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
                            height: 0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Lovely music\nNot all was as it seems",
                                style: TextStyle(
                                  color: Color(0xff3b3b3b),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\n#Lovemusic",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.music_note_outlined,
                                color: Colors.grey.shade400,
                              ),
                              Icon(
                                Icons.gif_box,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image(
            image: AssetImage("images/Mask Group 284.png"),
            height: height * 0.3,
            width: width * 1.0,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: height * 0.1,
                width: width * 0.99,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Spacer(),
                        Image.asset(
                          'images/new like before.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Like',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  465',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'images/New comment bef.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Comment',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  321',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'images/Revibe before r.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Revibed',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  212',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: width * 0.99,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage("images/list.png"),
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
                            "Vibes - TV",
                            style: TextStyle(
                              color: Color(0xff3b3b3b),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "Create a post",
                            style: TextStyle(
                              color: Color(0xff3b3b3b),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Row(
                            children: [
                              Text(
                                "1 minutes ago ",
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
                            height: 0,
                          ),
                          Row(
                            children: [
                              Text(
                                "Lovely music\nNot all was as it seems",
                                style: TextStyle(
                                  color: Color(0xff3b3b3b),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\n#Lovemusic",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.music_note_outlined,
                                color: Colors.grey.shade400,
                              ),
                              Icon(
                                Icons.gif_box,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image(
            image: AssetImage("images/list.png"),
            height: height * 0.3,
            width: width * 1.0,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: height * 0.1,
                width: width * 0.99,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Spacer(),
                        Image.asset(
                          'images/new like before.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Like',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  465',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'images/New comment bef.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Comment',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  321',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'images/Revibe before r.png',
                          fit: BoxFit.fill,
                          // color: Colors.black,
                          height: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '  Revibed',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '  212',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
