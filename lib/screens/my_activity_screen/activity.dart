import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../common/common_bottom_widget.dart';
import 'components/post_with_button.dart';
import 'components/post_without_button.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            PostWithoutButton(),
            SizedBox(height: 10,),
            PostWithButton(),
            SizedBox(height: 10,),
            PostWithButton(),
            SizedBox(height: 10,),
            PostWithButton(),
            SizedBox(height: 10,),
            PostWithButton(),

            SizedBox(
              height: 20,
            ),
            BottomWidget(),
            SizedBox(
              height: 20,
            ),
            CopyRight(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}




