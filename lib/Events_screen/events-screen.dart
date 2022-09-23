import 'package:flutter/material.dart';

import 'browse_event.dart';
import 'create_event.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        indicatorColor: Colors.orange,
                        labelColor: Colors.orange,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        tabs: [
                        Tab(text: "Browse Event",),
                        Tab(text: "Event Going",),
                        Tab(text: "Invited",),
                        Tab(text: "Event Going",),
                      ],),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return CreateEvent();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(10),),
                        child: Row(children: [
                          Text("Create",style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_rounded,color: Colors.white,)
                        ],),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  BrowseEvent(),
                  Container(),
                  Container(),
                  Container(),
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
