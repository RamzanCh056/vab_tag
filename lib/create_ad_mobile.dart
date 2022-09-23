import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/artboard35.dart';

import 'home/drawer.dart';

class CreateAdMobile extends StatefulWidget {
  CreateAdMobile({Key? key}) : super(key: key);

  @override
  State<CreateAdMobile> createState() => _CreateAdMobileState();
}

class _CreateAdMobileState extends State<CreateAdMobile> {
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
                    Get.to(ArtBoard35());
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
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
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
                            fillColor: Color(0xffF9F9F9),
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
                        color: Colors.white,
                      ),
                      height: 2000,
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
                                  icon: Image.asset('images/Path 224.png'),
                                ),
                                Tab(
                                  icon: Image.asset('images/Group 781.png'),
                                ),
                                Tab(
                                  icon: Image.asset('images/Group 779.png'),
                                ),
                                Tab(
                                  icon: Image.asset('images/Path 223.png'),
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
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 12,
                                            ),
                                            MaterialButton(
                                                minWidth: 120,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                color: Color(0xffFF9200),
                                                onPressed: () {},
                                                child: Text(
                                                  'All',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            MaterialButton(
                                                minWidth: 120,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                color: Colors.grey.shade200,
                                                onPressed: () {},
                                                child: Text(
                                                  'Female',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            MaterialButton(
                                                minWidth: 120,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                color: Colors.grey.shade200,
                                                onPressed: () {},
                                                child: Text(
                                                  'Male',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Divider(
                                        thickness: 1,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0, right: 30),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                    child: Image.asset(
                                                      'images/Mask Group 264.png',
                                                      fit: BoxFit.fill,
                                                      width: double.infinity,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 320,
                                                    color: Colors.grey.shade100,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 55,
                                              left: 0,
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 55,
                                                backgroundImage: AssetImage(
                                                  'images/Mask Group 263.png',
                                                ),
                                              )),
                                          Positioned(
                                              top: 65,
                                              left: 79,
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor:
                                                    Colors.lightGreen,
                                              )),
                                          Positioned(
                                              top: 15,
                                              left: 0,
                                              right: -300,
                                              child: Image.asset(
                                                'images/Group 482.png',
                                                height: 25,
                                              )),
                                          Positioned(
                                              top: 175,
                                              left: 125,
                                              right: 0,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Justin wilson  ',
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      CircleAvatar(
                                                          radius: 15,
                                                          child: Icon(
                                                            Icons.done,
                                                            size: 17,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('@david_milan1  ',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      Text('United State  ',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors.grey
                                                                  .shade300)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          Positioned(
                                              top: 245,
                                              left: 40,
                                              right: 40,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Likes',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('13K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Following',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('28K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Followers',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('8K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  MaterialButton(
                                                    color: Colors.orange,
                                                    minWidth: 120,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                    onPressed: () {},
                                                    child: Text('Follow',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0, right: 30),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                    child: Image.asset(
                                                      'images/Mask Group 264.png',
                                                      fit: BoxFit.fill,
                                                      width: double.infinity,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 320,
                                                    color: Colors.grey.shade100,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 55,
                                              left: 0,
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 55,
                                                backgroundImage: AssetImage(
                                                  'images/Mask Group 263.png',
                                                ),
                                              )),
                                          Positioned(
                                              top: 65,
                                              left: 79,
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor:
                                                    Colors.lightGreen,
                                              )),
                                          Positioned(
                                              top: 15,
                                              left: 0,
                                              right: -300,
                                              child: Image.asset(
                                                'images/Group 482.png',
                                                height: 25,
                                              )),
                                          Positioned(
                                              top: 175,
                                              left: 125,
                                              right: 0,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Justin wilson  ',
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      CircleAvatar(
                                                          radius: 15,
                                                          child: Icon(
                                                            Icons.done,
                                                            size: 17,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('@david_milan1  ',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      Text('United State  ',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors.grey
                                                                  .shade300)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          Positioned(
                                              top: 245,
                                              left: 40,
                                              right: 40,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Likes',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('13K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Following',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('28K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Followers',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('8K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  MaterialButton(
                                                    color: Colors.orange,
                                                    minWidth: 120,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                    onPressed: () {},
                                                    child: Text('Follow',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0, right: 30),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                    child: Image.asset(
                                                      'images/Mask Group 264.png',
                                                      fit: BoxFit.fill,
                                                      width: double.infinity,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 320,
                                                    color: Colors.grey.shade100,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 55,
                                              left: 0,
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 55,
                                                backgroundImage: AssetImage(
                                                  'images/Mask Group 263.png',
                                                ),
                                              )),
                                          Positioned(
                                              top: 65,
                                              left: 79,
                                              right: 0,
                                              child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor:
                                                    Colors.lightGreen,
                                              )),
                                          Positioned(
                                              top: 15,
                                              left: 0,
                                              right: -300,
                                              child: Image.asset(
                                                'images/Group 482.png',
                                                height: 25,
                                              )),
                                          Positioned(
                                              top: 175,
                                              left: 125,
                                              right: 0,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Justin wilson  ',
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      CircleAvatar(
                                                          radius: 15,
                                                          child: Icon(
                                                            Icons.done,
                                                            size: 17,
                                                            color: Colors.white,
                                                          ))
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('@david_milan1  ',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      Text('United State  ',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors.grey
                                                                  .shade300)),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          Positioned(
                                              top: 245,
                                              left: 40,
                                              right: 40,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Likes',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('13K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Following',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('28K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('Followers',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey)),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            8.0,
                                                                        right:
                                                                            8),
                                                                child: Divider(
                                                                  thickness: 1,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 10),
                                                              Text('8K',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .orange)),
                                                              SizedBox(
                                                                  height: 20),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  MaterialButton(
                                                    color: Colors.orange,
                                                    minWidth: 120,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                    onPressed: () {},
                                                    child: Text('Follow',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                  )
                                                ],
                                              )),
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
