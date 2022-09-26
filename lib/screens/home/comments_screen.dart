import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import 'home_page.dart';

var commentsData;
var allComments = [];

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  void initState() {
    print(postData);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, postIndex) {
                postIndex = Get.arguments[0];
                var check = Get.arguments[1];

                return check == true
                    ? ListView.builder(
                        physics: ScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        shrinkWrap: true,
                        itemCount: postData[postIndex]['all_comments'].length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Card(
                                color: Colors.grey[100],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ListTile(
                                  leading: GestureDetector(
                                    onTap: () async {
                                      //   print(i);
                                      // Display the image in large form.
                                      print("Comment Clicked");
                                    },
                                    child: Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: new BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: new BorderRadius.all(
                                              Radius.circular(50))),
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                          postData[postIndex]['all_comments']
                                              [index]['publisher']['avatar'],
                                        ),
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    postData[postIndex]['all_comments'][index]
                                        ['publisher']['username'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    postData[postIndex]['all_comments'][index]
                                        ['text'],
                                  ),
                                  trailing: Text(
                                    DateFormat('hh:mm a').format(
                                        DateTime.fromMillisecondsSinceEpoch(
                                            int.parse(
                                                  postData[postIndex]
                                                          ['all_comments']
                                                      [index]['time'],
                                                ) *
                                                1000)),
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        })
                    : Column(
                        children: [
                          SizedBox(
                            height: 180,
                          ),
                          Center(
                              child: Container(
                                  child: Center(
                                      child: Text(
                            "No comments found",
                            style: TextStyle(fontSize: 18),
                          )))),
                        ],
                      );
              }),
        ),
      ),
    );
  }
}
