import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'browse_articles.dart';
import 'create_new_article.dart';
import 'my_article.dart';
class MyArticleHomeSceen extends StatelessWidget {
  const MyArticleHomeSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.symmetric(vertical: 6 ),
                tabs: [
                Tab(text: "My Articles",),
                Tab(text: "Browse Articles",),
                GestureDetector(
                  onTap: (){
                    Get.to( CreateNewArticle());
                  },
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Create",style: TextStyle(color: Colors.white),),
                        Icon(Icons.add_circle_rounded,color: Colors.white,)
                      ],
                    ),
                  ),
                )
              ],),
              Expanded(child: TabBarView(children: [
                MyArticle(),
                BrowseArticle(),
                Container(),
              ],),),
            ],
          ),
        ),
      ),
    );
  }
}
