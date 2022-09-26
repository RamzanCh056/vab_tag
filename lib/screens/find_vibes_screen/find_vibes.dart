import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../common/appbar.dart';
import 'components/playlist.dart';
import 'components/post.dart';

class FindVibes extends StatelessWidget {
  const FindVibes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323232),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              CommonAppBar(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Color(0xFF151515),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Trendy Vibes",
                      style: TextStyle(fontSize: 18, color: Color(0xFFBEBEBE)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return PlayList(
                              title: "Lorum ipsum\nDolor dash",
                              image: 'assets/profile.jpg',
                            );
                          }),
                    ),
                    SizedBox(height: 20,),
                    Row(children: [
                      Text(
                        "Beauty",
                        style: TextStyle(fontSize: 18, color: Color(0xFFBEBEBE)),
                      ),
                      Spacer(),
                      Text(
                        "Show all",
                        style: TextStyle(color: Color(0xFF3B55FF)),
                      ),
                    ],),
                    SizedBox(height: 20,),
                    Post(title: 'Lucile McMahon',),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.thumb_up,color: Colors.amber,),
                      SizedBox(width: 5,),
                      Text("MUST WATCH",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 5,),
                      Icon(Icons.thumb_up,color: Colors.amber,),
                    ],),
                    SizedBox(height: 20,),
                    Post(title: 'Lucile McMahon',),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,color: Colors.green,),
                        SizedBox(width: 5,),
                        Text("British Revert G",style: TextStyle(color: Colors.white),),
                      ],)

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




