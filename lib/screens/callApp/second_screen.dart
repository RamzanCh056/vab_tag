import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'circular_icon.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
                  Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.white,
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Card(child: Image(
                              image: AssetImage("images/img5.jpg"),fit: BoxFit.cover,),),
                          ),
                          Expanded(
                            child: Card(child: Image(
                              image: AssetImage("images/img2.jpg"),fit: BoxFit.cover,),),
                          ),
                          Expanded(
                            child: Card(child: Image(
                              image: AssetImage("images/img10.jpg"),fit: BoxFit.cover,),),
                          ),
                          Expanded(
                            child: Card(child: Image(
                              image: AssetImage("images/img8.jpg"),fit: BoxFit.cover,),),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Container(
                        height: 250,
                          width: double.infinity,
                          child: Image(
                            // height: 150,
                            // width: double.infinity,
                            image: AssetImage("images/3.jpg"),
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Card(
                            child: Image(
                              height: 80,
                              width: 150,
                              image: AssetImage("images/img0.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
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
                      ),
                      SizedBox(height: 10,)
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
