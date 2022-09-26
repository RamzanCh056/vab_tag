import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/screens/chat/chatroom.dart';
import 'package:vab_tag/screens/home/drawer.dart';
class ArtBoard10 extends StatefulWidget {
  ArtBoard10({Key? key}) : super(key: key);

  @override
  State<ArtBoard10> createState() => _ArtBoard10State();
}

class _ArtBoard10State extends State<ArtBoard10> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
                    Get.to(ChatRoom());
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
          backgroundColor: Color(0xffF1F1F1),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Card(
                    child: Container(
                      height: 65,
                      color: Color(0xffF1F1F1),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 14,
                              ),
                              CircleAvatar(
                                radius: 18,
                                backgroundImage:
                                    AssetImage('images/image4.png'),
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                'Chat room',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                                child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.person,
                                        size: 20,
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 4,
                                          backgroundColor: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        CircleAvatar(
                                          radius: 4,
                                          backgroundColor: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        CircleAvatar(
                                          radius: 4,
                                          backgroundColor: Colors.grey,
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF1F1F1),
                      ),
                      height: 850,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            child: TabBar(
                              labelColor: Color(0xffFF9200),
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Color(0xffFF9200),
                              indicatorWeight: 4,
                              labelStyle: TextStyle(fontSize: 14),
                              tabs: [
                                Tab(
                                  text: "Chat",
                                ),
                                Tab(
                                  text: "Group chat",
                                ),
                                Tab(
                                  text: "Page Chat",
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
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 0,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                              ),
                                              child: Center(
                                                child: TextField(
                                                  onChanged: (value) {
                                                    //Do something with the user input.
                                                  },
                                                  decoration: InputDecoration(
                                                    fillColor:
                                                        Color(0xffF1F1F1),
                                                    filled: true,
                                                    suffixIcon: Icon(
                                                      Icons.search,
                                                      color: Color(0xffFF9200),
                                                    ),
                                                    hintText:
                                                        'Search Friend...',
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10.0,
                                                            horizontal: 20.0),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  32.0)),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 1.0),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  32.0)),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2.0),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  32.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          // CircleAvatar(
                                          //   backgroundColor: Color(0xffFF9200),
                                          //   child: IconButton(
                                          //     onPressed: () {
                                          //       // Navigator.push(
                                          //       //     context,
                                          //       //     MaterialPageRoute(
                                          //       //         builder: (context) =>
                                          //       //             Page6()));
                                          //     },
                                          //     icon: Icon(
                                          //       Icons.add,
                                          //       color: Colors.white,
                                          //     ),
                                          //   ),
                                          // )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6.0, top: 20, right: 6),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Online Friend',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xffF9F9F9)),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Container(
                                                            child: Image.asset(
                                                              'images/Mask Group 285.png',
                                                              height: 55,
                                                              fit: BoxFit.fill,
                                                            ),
                                                            // backgroundColor: Colors.white10,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Ilizbat baby',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87),
                                                          ),
                                                          SizedBox(
                                                            height: 3,
                                                          ),
                                                          Text(
                                                            '1 day ago',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black54),
                                                          ),
                                                          SizedBox(
                                                            height: 18,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor:
                                                                  Colors.green
                                                                      .shade500,
                                                              radius: 4,
                                                            ),
                                                            SizedBox(
                                                              height: 39,
                                                            ),
                                                          ]),
                                                      Spacer(),
                                                      Column(
                                                        children: [
                                                          Container(
                                                            child: Image.asset(
                                                              'images/Mask Group 285.png',
                                                              height: 15,
                                                              fit: BoxFit.fill,
                                                            ),
                                                            // backgroundColor: Colors.white10,
                                                          ),
                                                          SizedBox(
                                                            height: 39,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Color(0xffF9F9F9)),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Container(
                                                            child: Image.asset(
                                                              'images/Mask Group 285.png',
                                                              height: 55,
                                                              fit: BoxFit.fill,
                                                            ),
                                                            // backgroundColor: Colors.white10,
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Ilizbat baby',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black87),
                                                          ),
                                                          SizedBox(
                                                            height: 3,
                                                          ),
                                                          Text(
                                                            '1 day ago',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black54),
                                                          ),
                                                          SizedBox(
                                                            height: 18,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor:
                                                                  Colors.green
                                                                      .shade500,
                                                              radius: 4,
                                                            ),
                                                            SizedBox(
                                                              height: 39,
                                                            ),
                                                          ]),
                                                      Spacer(),
                                                      Column(
                                                        children: [
                                                          Container(
                                                            child: Image.asset(
                                                              'images/Mask Group 285.png',
                                                              height: 15,
                                                              fit: BoxFit.fill,
                                                            ),
                                                            // backgroundColor: Colors.white10,
                                                          ),
                                                          SizedBox(
                                                            height: 39,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
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
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(32),
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
                                                    hintText:
                                                        'Search Friend...',
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10.0,
                                                            horizontal: 20.0),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  32.0)),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 1.0),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  32.0)),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.white,
                                                          width: 2.0),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  32.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color(0xffF9F9F9)),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 19,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      child: Image.asset(
                                                        'images/IG.png',
                                                        height: 25,
                                                        fit: BoxFit.fill,
                                                      ),
                                                      // backgroundColor: Colors.white10,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Ilizbat, David , Anglina , Jason',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.black87),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      'David send 2 photos 24 June',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      '1 days ago',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Color(0xffF9F9F9)),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      child: Image.asset(
                                                        'images/Mask Group 76.png',
                                                        height: 55,
                                                        fit: BoxFit.fill,
                                                      ),
                                                      // backgroundColor: Colors.white10,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Usman, Adil , Safina',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.black87),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      'WOW!!! Amazing 2 dicsusion 23 June',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      '2 days ago',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                          ],
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
