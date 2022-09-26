import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'activity.dart';
import 'components/viewed_post.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({Key? key}) : super(key: key);

  @override
  State<MyActivity> createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Color(0xFFEFEFEF),
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Color(0xFFFF9200),
            unselectedLabelColor: Color(0xFF717171),
            labelColor: Color(0xFFFF9200),
            tabs: [
              Tab(text: "Activity",),
              Tab(text: "Viewed Post",),
            ],),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Activity(),
              ViewedPost()

            ],
          ),
        ),
      ),
    );
  }
}
