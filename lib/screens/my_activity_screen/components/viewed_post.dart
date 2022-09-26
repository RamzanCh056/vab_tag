import 'package:flutter/material.dart';
import 'package:vab_tag/screens/my_activity_screen/components/post_with_button.dart';
import 'package:vab_tag/screens/my_activity_screen/components/post_without_button.dart';
class ViewedPost extends StatelessWidget {
  const ViewedPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(),
                  CircleAvatar(),
                  SizedBox(width: 10,),
                  Text('You',style: TextStyle(color: Color(0xFF2196F3),fontSize: 10),),
                  SizedBox(width: 4,),
                  Text('Starting following',style: TextStyle(fontSize: 10),),
                  SizedBox(width: 4,),
                  Text('Davidson',style: TextStyle(color: Color(0xFF2196F3),fontSize: 10),),
                  SizedBox(width: 4,),
                  Text('4w',style: TextStyle(fontSize: 10),),
                  SizedBox(width: 10,),
                  Text('18-07-2022',style: TextStyle(fontSize: 10),),
                ],
              ),
            ),
            PostWithoutButton(),
            PostWithButton()
          ],
        ),
      ),
    );
  }
}
