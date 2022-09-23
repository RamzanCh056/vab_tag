import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/news/home_screen.dart';

import 'home/drawer.dart';

class ArtBoard39 extends StatefulWidget {
  ArtBoard39({Key? key}) : super(key: key);

  @override
  State<ArtBoard39> createState() => _ArtBoard39State();
}

class _ArtBoard39State extends State<ArtBoard39> {
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
                    Get.to(news());
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
          // backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            ),
                        height: 2000,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TabBar(
                                    labelColor: Color(0xffFF9200),
                                    unselectedLabelColor: Colors.grey,
                                    indicatorColor: Color(0xffFF9200),
                                    indicatorWeight: 3,
                                    labelPadding: EdgeInsets.symmetric(vertical: 18 ),
                                    labelStyle: TextStyle(fontSize: 13),
                                    tabs: [
                                      Tab(
                                        text: "My Page",
                                      ),
                                      Tab(
                                        text: "Suggested page",
                                      ),
                                      Tab(
                                        text: "Inbox",
                                      ),
                                      Tab(
                                        text: "Create Page",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 10.0,
                                                    horizontal: 20.0),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(32.0)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 1.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(32.0)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 2.0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(32.0)),
                                            ),
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
                            Expanded(
                              flex: 1,
                              child: TabBarView(
                                children: [
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
                                            'My Page',
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
                                    padding: const EdgeInsets.only(
                                        left: 6.0, right: 6, top: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Category',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              'See all',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Container(
                                                        height: 150,
                                                        width: 85,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            color: Colors.grey),
                                                        child: Image.asset(
                                                          'images/Image 157.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'jollie cook',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Container(
                                                        height: 150,
                                                        width: 85,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            color: Colors.grey),
                                                        child: Image.asset(
                                                          'images/creative-writin.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'jollie cook',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Container(
                                                        height: 150,
                                                        width: 85,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            color: Colors.grey),
                                                        child: Image.asset(
                                                          'images/PROFILE-Photogr.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'jollie cook',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Container(
                                                      height: 150,
                                                      width: 85,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color: Colors.grey),
                                                      child: Image.asset(
                                                        'images/pic_sid189-0-no.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'David son',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    child: Container(
                                                        height: 150,
                                                        width: 85,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                            color: Colors.grey),
                                                        child: Image.asset(
                                                          'images/Mask Group 177.png',
                                                          fit: BoxFit.fill,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Malina dar',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            GridView(
                                              physics: ScrollPhysics(),
                                              shrinkWrap: true,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 4,
                                                mainAxisSpacing: 5,
                                                mainAxisExtent: 270,
                                              ),
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    // Get.to(HomeScreen());
                                                  },
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14),
                                                    ),
                                                    color: Colors.white,
                                                    elevation: 4,
                                                    child: Container(
                                                        height: 140,
                                                        width: 170,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical: 8),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14),
                                                                child:
                                                                    Image.asset(
                                                                  "images/Rectangle 584.png",
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Text(
                                                                  'Music & Entertainment',
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .thumb_up_alt_outlined,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  '8k people like this',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                Icon(
                                                                  Icons.list,
                                                                  size: 15,
                                                                ),
                                                                SizedBox(
                                                                  width: 4,
                                                                ),
                                                                Text(
                                                                  'Entertainment',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                SizedBox(
                                                                  width: 8,
                                                                ),
                                                                MaterialButton(
                                                                  minWidth: 50,
                                                                  height: 30,
                                                                  color: Colors
                                                                      .orange,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Like Page",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          )),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .thumb_up,
                                                                        size:
                                                                            18,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
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
                                            'Inbox',
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
                                            'Create Page',
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
          ),
        ));
  }
}
