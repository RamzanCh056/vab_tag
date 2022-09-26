import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../playlist/playlist.dart';
import 'circular_icon.dart';

// void main() {
//   runApp(MaterialApp(
//     home: SecondScreen(),
//   ));
// }

class callApp extends StatelessWidget {
  const callApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Column(
          children: [
            Container(
              // height: 60,
              width: double.infinity,
              color: Colors.orangeAccent,
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Container(
                    width: 260,
                    height: 60,
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText:
                          "Search for peoples, pages, groups & #hashtag",
                          hintStyle:
                          TextStyle(color: Colors.grey, fontSize: 12),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.orangeAccent,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(playlist());
                    },
                    child: Icon(
                      FontAwesomeIcons.comment,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.commentDots,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("images/3.jpg"),
                  ),
                  title: Text(
                    "David, Stephen",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle:
                  Text("+14 others", style: TextStyle(color: Colors.white)),
                  trailing: FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.,
                      children: [
                        Icon(
                          Icons.list_alt,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.expand,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          GridView.builder(
                              shrinkWrap: true,
                              itemCount: 12,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                  mainAxisExtent: 80,
                                  crossAxisCount: 2),
                              itemBuilder: (_, index) {
                                return Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Image(
                                      image: AssetImage("images/img$index.jpg"),
                                      fit: BoxFit.cover,
                                    ));
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                CircularIcon(
                                  icon: Icons.messenger,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CircularIcon(icon: Icons.message),
                                SizedBox(
                                  width: 5,
                                ),
                                CircularIcon(
                                  icon: Icons.supervisor_account,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircularIcon(
                                  icon: Icons.video_call,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircularIcon(
                                  icon: Icons.call,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircularIcon(
                                  icon: Icons.mic_rounded,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 425,
                  left: 170,
                  child: Card(
                      child: Image(
                        height: 80,
                        width: 150,
                        image: AssetImage("images/img0.jpg"),
                        fit: BoxFit.cover,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}