import 'package:flutter/material.dart';

class MyGroup extends StatelessWidget {
  const MyGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child:ListView(
          children: [
            GroupWidget(),
            SizedBox(height: 10,),
            GroupWidget(),
            SizedBox(height: 50,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}

class GroupWidget extends StatelessWidget {
  const GroupWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Haritla",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 50,),
                    Row(children: [
                      Icon(Icons.man,color: Colors.orange,),
                      SizedBox(width: 10,),
                      Text("2k Pepole",style: TextStyle(fontSize: 16,),),

                    ],),
                    SizedBox(width: 10,),
                    Row(children: [
                      Icon(Icons.man,color: Colors.orange,),
                      SizedBox(width: 10,),
                      Text("Haritla",style: TextStyle(fontSize: 16,),),

                    ],),
                  ],
                ),
                Spacer(),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Edit",style: TextStyle(color: Colors.white),),
                  ),
                )


              ],
            ),
          ),
        ],
      ),
    );
  }
}
