import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vab_tag/create_business_page.dart';

import 'home/drawer.dart';

class BrowseEvent extends StatefulWidget {
  BrowseEvent({Key? key}) : super(key: key);

  @override
  State<BrowseEvent> createState() => _BrowseEventState();
}

class _BrowseEventState extends State<BrowseEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
                Get.to(CreateBusinessPage());
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
          Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 3,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 3,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 3,
                      ),
                      SizedBox(
                        width: 8,
                      ),
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
                                hintText: 'Search',
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
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to(CreateBusinessPage());
                        },
                        child: Container(
                            child: Icon(
                          Icons.home,
                          color: Colors.white,
                        )
                            // backgroundColor: Colors.white10,
                            ),
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
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset('images/browse.PNG'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 180,
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Image.asset('images/Path 324.png'),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'It seems like no one created\n             an event yet!',
            style: TextStyle(
                color: Colors.grey, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 115,
          ),
          Container(
            color: Color(0xffFF9200),
            child: Column(children: [
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Market Place\nTerms',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Refund \nPolicy',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Start\nSelling',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Your\nWishlist',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'On Sale\nItems',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        'Fing Help &\nSupport',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ]),
          ),
        ],
      )),
    );
  }
}
