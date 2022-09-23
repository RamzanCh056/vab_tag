import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vab_tag/my_groups/sugested_group.dart';

import 'join_group.dart';
import 'my_group.dart';

class MyGroupsHomeScreen extends StatelessWidget {
  const MyGroupsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade300,
            bottom: TabBar(
              indicatorColor: Colors.orange,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              labelPadding: EdgeInsets.symmetric(vertical: 7,horizontal: 2 ),
              tabs: [
                Tab(
                  text: "My Group",
                ),
                Tab(
                  text: "Suggested Group",
                ),
                Tab(
                  text: "Join Group",
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Create",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      // Expanded(
                      //     child: Expanded(
                      //       child: Icon(
                      //   Icons.add_circle_rounded,
                      //   color: Colors.white,
                      // ),
                      //     ))
                    ],
                  ),
                )
              ],
            ),
          ),
          body: SafeArea(
            child: TabBarView(
              children: [
                MyGroup(),
                SuggestedGroup(),
                JoinGroup(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          )),
    );
  }
}
