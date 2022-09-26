import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinGroup extends StatelessWidget {
  const JoinGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    height: 130,
                    child: Image.asset(
                      'assets/home.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 180,
                    child: Container(
                      height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(radius: 30,)),
                  ),
                  SizedBox(height: 10,),
                  Positioned(
                    top: 160,
                    left: 160,
                    child: Row(children: [
                      Text("Epic Cras",style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.verified,color: Colors.blue,)
                    ],),
                  ),
                  Positioned(
                    top: 185,
                    left: 160,
                    child: Text("1M members",style: TextStyle(
                      color: Colors.grey
                    ),),
                  ),
                  Positioned(
                    top: 210,
                    left: 150,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_rounded,color: Colors.white,),
                          SizedBox(width: 3,),
                          Text("Join",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              padding: EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
