import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vab_tag/common/appbar.dart';
import '../home/drawer.dart';

class ArtBoard17 extends StatefulWidget {
  ArtBoard17({Key? key}) : super(key: key);

  @override
  State<ArtBoard17> createState() => _ArtBoard17State();
}

class _ArtBoard17State extends State<ArtBoard17>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  List<String> picTabs = [
    'assets/menue.svg',
    'assets/image-svgrepo-com.svg',
    'assets/play-alt-svgrepo-com.svg',
    'assets/audio-melody-music-37-svgrepo-com.svg',
    'assets/file-document-svgrepo-com.svg',
    'assets/location-on-map-svgrepo-com.svg',
  ];
   TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: Draweer(),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(93),
            child: Column(children: [
              //
              SizedBox(height: 30,),
            //  TopAppbar(),
              CommonAppBar(),


            ],)

        ),


        // CommonAppBar(),
        // AppBar(
        //   backgroundColor: Color(0xffFF9200),
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Expanded(
        //         child: Container(
        //           height: 35,
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(32),
        //           ),
        //           child: Center(
        //             child: TextField(
        //               onChanged: (value) {
        //                 //Do something with the user input.
        //               },
        //               decoration: InputDecoration(
        //                 suffixIcon: Icon(
        //                   Icons.search,
        //                   color: Color(0xffFF9200),
        //                 ),
        //                 hintText: 'Search...',
        //                 contentPadding: EdgeInsets.symmetric(
        //                     vertical: 10.0, horizontal: 20.0),
        //                 border: OutlineInputBorder(
        //                   borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //                 ),
        //                 enabledBorder: OutlineInputBorder(
        //                   borderSide:
        //                       BorderSide(color: Colors.white, width: 1.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //                 ),
        //                 focusedBorder: OutlineInputBorder(
        //                   borderSide:
        //                       BorderSide(color: Colors.white, width: 2.0),
        //                   borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       InkWell(
        //         onTap: () {},
        //         child: Container(
        //           child: Image.asset(
        //             'images/Exclusion 1.PNG',
        //             height: 29,
        //             fit: BoxFit.fill,
        //           ),
        //           // backgroundColor: Colors.white10,
        //         ),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Get.to(ArtBoard18());
        //         },
        //         child: Container(
        //           child: Image.asset(
        //             'images/Path 2.png',
        //             height: 25,
        //             fit: BoxFit.fill,
        //           ),
        //           // backgroundColor: Colors.white10,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16),
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
                            Row(
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
                                          borderRadius:
                                              BorderRadius.circular(8)),
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
                                  width: 10,
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
                                                    BorderRadius.circular(8)),
                                            onPressed: () {},
                                            child: Text(
                                              'Revibed',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Image.asset(
                                            'images/Group 482.png',
                                            height: 17,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(8)),
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
                                          'David Milan ',
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
                            SizedBox(
                              height: 6,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
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
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Followers',
                                                  style:
                                                      TextStyle(fontSize: 13),
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
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '@david_millan1 ',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'david',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
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
                                            '34 Mins ',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.orange),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Invite friends',
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
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ),
                          Row(children: [
                            Expanded(
                              flex: 2,

                              child: TabBar(
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.grey,

                                indicatorColor: Color(0xffFF9200),
                                indicatorWeight: 4,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffFF9200),
                                ),
                                labelPadding: EdgeInsets.symmetric(horizontal: 3.0,vertical: 10 ),
                                labelStyle: TextStyle(
                                  fontSize: 10,
                                ),
                                tabs: [
                                  Text("Time line"),
                                  Text("Group"),
                                  Text("Pages"),
                                  Text("Hashtag"),
                                  Text("Photos"),
                                ],
                              ),
                            ),
                            Container(
                              height: 35,

                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                color: Color(0xffFF9200),
                              ),
                            child:   Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: [
                                Text("Message", style: TextStyle(color: Colors.white),),
                                SizedBox(width: 5,),
                                 Icon(Icons.send, color: Colors.white,size: 18,),
                                // SvgPicture.asset(
                                //   'assets/send.svg',
                                //   height: 30,
                                //   color: Colors.white,
                                //   width: 30,
                                // ),

                              ],),
                            ),
                            ),

                          ],),
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
                              TabBar(
                                controller: _tabController,
                                tabs: [
                                  SvgPicture.asset(
                                    picTabs[0],
                                    color: Colors.grey.shade500,
                                    height: 25,
                                    width: 25,

                                  ),
                                  SvgPicture.asset(
                                      picTabs[1],
                                      height: 25,
                                      color: Colors.grey.shade500,
                                      width: 25
                                  ),
                                  SvgPicture.asset(
                                      picTabs[2],
                                      height: 25,
                                      color: Colors.grey.shade500,
                                      width: 25
                                  ),
                                  SvgPicture.asset(
                                    picTabs[3],
                                    height: 30,
                                    color: Colors.grey.shade500,
                                    width: 30,


                                  ),
                                  SvgPicture.asset(
                                      picTabs[4],
                                      height: 25,
                                      color: Colors.grey.shade500,
                                      width: 25
                                  ),
                                  SvgPicture.asset(
                                      picTabs[5],
                                      height: 25,
                                      color: Colors.grey.shade500,
                                      width: 25
                                  ),

                                ],
                                labelColor: Color(0xffFF9200),
                                unselectedLabelColor: Colors.grey,
                                indicatorColor: Color(0xffFF9200),
                                indicatorWeight: 2,

                                labelPadding: EdgeInsets.symmetric(vertical: 6 ),
                                labelStyle: TextStyle(fontSize: 14),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32.0)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32.0)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32.0)),
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
                      backgroundImage: AssetImage('images/image4.png'),
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
                      width: width * 0.9,
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
                            backgroundImage: AssetImage("images/image4.png"),
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
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
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
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
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
                                ),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // height: height * 0.1,
                      width: width * 0.9,
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
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                              backgroundImage: AssetImage("images/image4.png"),
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
                                // Row(
                                //   children: [
                                //     Text(
                                //       "Lovely music\nNot all was as it seems",
                                //       style: TextStyle(
                                //         color: Color(0xff3b3b3b),
                                //         fontSize: 15.0,
                                //         fontWeight: FontWeight.bold,
                                //       ),
                                //     ),
                                //     Text(
                                //       "Lovemusic",
                                //       style: TextStyle(
                                //         color: Colors.orange,
                                //         fontSize: 15.0,
                                //         fontWeight: FontWeight.bold,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
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
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //image: AssetImage("images/Mask Group 284.png"),
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
                    width: width * 0.9,
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
                      width: width * 0.9,
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
                            backgroundImage: AssetImage("images/image4.png"),
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
                    width: width * 0.9,
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
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
