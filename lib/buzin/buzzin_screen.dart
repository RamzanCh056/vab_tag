import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BuzinScreen extends StatelessWidget {
  const BuzinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Buzzin",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Icon(Icons.multitrack_audio),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              Text(
                '4k+',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.messenger_outlined,
                color: Colors.white,
              ),
              Text(
                '2k',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.volume_mute,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '3M+ Views',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border:
                                    Border.all(width: 2, color: Colors.grey),
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Vibetv',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17)),
                          SizedBox(width: 10,),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                          SizedBox(width: 10,),
                          Text('Like',style: TextStyle(color: Colors.white,)),
                          SizedBox(width: 4,),
                          Icon(Icons.thumb_up,color: Colors.white,size: 20,),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(children: [
                        Text("This dance is a vibe",style: TextStyle(color: Colors.white),),
                        Text("#vibetv",style: TextStyle(color: Colors.orangeAccent),),
                      ],),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert,color: Colors.white,size: 50,)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
