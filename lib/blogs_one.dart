import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/blogs_2.dart';

import 'common/top_appbar.dart';
import 'home/drawer.dart';

class BlogsOne extends StatefulWidget {
  BlogsOne({Key? key}) : super(key: key);

  @override
  State<BlogsOne> createState() => _BlogsOneState();
}

class _BlogsOneState extends State<BlogsOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
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
                        decoration: const InputDecoration(
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
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/mesge.png"), fit: BoxFit.cover)),

                    // ),
                    // backgroundColor: Colors.white10,

                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.to(BlogsTwo());
                  },
                  child: Container(
                    height: 27,
                    width: 30,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/Optionnew.png"), fit: BoxFit.fill)),

                  ),
                )
              ],
            ),
          ),
          // backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                
                children: [

                 // TopAppbar(),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 45,
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
                            fillColor: Colors.white,
                            filled: true,
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
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF8F8F8),
                      ),
                      height: 2500,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            child: TabBar(
                              labelColor: Color(0xffFF9200),
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Color(0xffFF9200),
                              indicatorWeight: 5,
                              labelStyle: TextStyle(fontSize: 14),
                              tabs: [
                                Tab(
                                  text: "Liked",
                                ),
                                Tab(
                                  text: "Most recent",
                                ),
                                Tab(
                                  text: "Most viewed",
                                ),
                                Tab(
                                  text: "Most searched",
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: TabBarView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffFFFFFF),
                                                width: 12),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(22),
                                                topRight: Radius.circular(22)),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 35,
                                                      backgroundColor:
                                                          Colors.white10,
                                                      backgroundImage: AssetImage(
                                                          'images/image4.png'),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "David Millan",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "@david milon1",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Bestqualitywatches",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              'images/Group 482.png',
                                                              height: 20,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            MaterialButton(
                                                                height: 25,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12)),
                                                                color: Color(
                                                                    0xffFAD61C),
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                  'Send Replay',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Image.asset(
                                            'images/Mask Group 236.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            // border: Border.all(
                                            //     color: Color(0xffFFFFFF),
                                            //     width: 12),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(22),
                                                bottomRight:
                                                    Radius.circular(22)),
                                          ),
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
                                                    'FRANCK MULLER V 45 SCDT COBRA',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'ST Cobra Replica Watch',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'FRANCK MULLER V 45 SCDT COBRAST Cobra Replica',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'watche..',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'Read more',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12.0, right: 12),
                                                child: Divider(
                                                  thickness: 1,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Spacer(),
                                                  Image.asset(
                                                    'images/like1.png',
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
                                                    'images/comment1 (1).png',
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
                                                   'images/revibe1.png',
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
                                              SizedBox(
                                                height: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffFFFFFF),
                                                width: 12),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(22),
                                                topRight: Radius.circular(22)),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 35,
                                                      backgroundColor:
                                                          Colors.white10,
                                                      backgroundImage: AssetImage(
                                                          'images/image4.png'),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "David Millan",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "@david milon1",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Bestqualitywatches",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              'images/Group 482.png',
                                                              height: 20,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            MaterialButton(
                                                                height: 25,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12)),
                                                                color: Color(
                                                                    0xffFAD61C),
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                  'Send Replay',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child:
                                            Image.asset('images/Image 108.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            // border: Border.all(
                                            //     color: Color(0xffFFFFFF),
                                            //     width: 12),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(22),
                                                bottomRight:
                                                    Radius.circular(22)),
                                          ),
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
                                                    'FRANCK MULLER V 45 SCDT COBRA',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'ST Cobra Replica Watch',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'FRANCK MULLER V 45 SCDT COBRAST Cobra Replica',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'watche..',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'Read more',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12.0, right: 12),
                                                child: Divider(
                                                  thickness: 1,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Spacer(),
                                                  Image.asset(
                                                    'images/new like before.png',
                                                    fit: BoxFit.fill,
                                                    color: Colors.black,
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
                                                    color: Colors.black,
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
                                                    color: Colors.black,
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
                                              SizedBox(
                                                height: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffFFFFFF),
                                                width: 12),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(22),
                                                topRight: Radius.circular(22)),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 35,
                                                      backgroundColor:
                                                          Colors.white10,
                                                      backgroundImage: AssetImage(
                                                          'images/image4.png'),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "David Millan",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "@david milon1",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Bestqualitywatches",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              'images/Group 482.png',
                                                              height: 20,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            MaterialButton(
                                                                height: 25,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12)),
                                                                color: Color(
                                                                    0xffFAD61C),
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                  'Send Replay',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Image.asset(
                                            'images/Mask Group 239.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            // border: Border.all(
                                            //     color: Color(0xffFFFFFF),
                                            //     width: 12),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(22),
                                                bottomRight:
                                                    Radius.circular(22)),
                                          ),
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
                                                    'FRANCK MULLER V 45 SCDT COBRA',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'ST Cobra Replica Watch',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'FRANCK MULLER V 45 SCDT COBRAST Cobra Replica',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'watche..',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'Read more',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12.0, right: 12),
                                                child: Divider(
                                                  thickness: 1,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Spacer(),
                                                  Image.asset(
                                                    'images/new like before.png',
                                                    fit: BoxFit.fill,
                                                    color: Colors.black,
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
                                                    color: Colors.black,
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
                                                    color: Colors.black,
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
                                              SizedBox(
                                                height: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffFFFFFF),
                                                width: 12),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(22),
                                                topRight: Radius.circular(22)),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 35,
                                                      backgroundColor:
                                                          Colors.white10,
                                                      backgroundImage: AssetImage(
                                                          'images/image4.png'),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "David Millan",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "@david milon1",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Bestqualitywatches",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.orange,
                                                            fontSize: 15.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              'images/Group 482.png',
                                                              height: 20,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            MaterialButton(
                                                                height: 25,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12)),
                                                                color: Color(
                                                                    0xffFAD61C),
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                  'Send Replay',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .white),
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Image.asset(
                                            'images/Mask Group 240.png'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12.0, right: 12),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            // border: Border.all(
                                            //     color: Color(0xffFFFFFF),
                                            //     width: 12),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(22),
                                                bottomRight:
                                                    Radius.circular(22)),
                                          ),
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
                                                    'FRANCK MULLER V 45 SCDT COBRA',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'ST Cobra Replica Watch',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'FRANCK MULLER V 45 SCDT COBRAST Cobra Replica',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'watche..',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'Read more',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12.0, right: 12),
                                                child: Divider(
                                                  thickness: 1,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Spacer(),
                                                  Image.asset(
                                                    'images/new like before.png',
                                                    fit: BoxFit.fill,
                                                    color: Colors.black,
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
                                                    color: Colors.black,
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
                                                    color: Colors.black,
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
                                              SizedBox(
                                                height: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Center(
                                        child: Text(
                                          'More Articles',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text(
                                          'Chat',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text(
                                          'Page Chat',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text(
                                          'Page Chat',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
