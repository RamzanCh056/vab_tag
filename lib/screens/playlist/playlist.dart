import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/common/top_appbar.dart';
import 'package:vab_tag/screens/playlist/plylist_.dart';

import '../../common/appbar.dart';
import '../trending_event/trending_event.dart';

class playlist extends StatelessWidget {
  const playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopAppbar(),
              CommonAppBar(),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    // My Playlist
                    GestureDetector(
                      onTap: () {
                        Get.to(EventPage());
                      },
                      child: Row(
                        children: [
                          Text(
                            "My Playlist",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.indigo,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 330.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 331.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 333.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // Popular Playlist

                    Row(
                      children: [
                        Text(
                          "Popular Playlist",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 330.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 331.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 333.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Latest Playlist
                    Row(
                      children: [
                        Text(
                          "Latest Playlist",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 330.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 331.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                        Expanded(
                          child: Playlist(
                            image: "images/Mask Group 333.png",
                            title: "Playlist name",
                            subTitle: "lorum ipsum dolor ispum",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
