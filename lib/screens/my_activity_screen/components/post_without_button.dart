import 'package:flutter/material.dart';
class PostWithoutButton extends StatelessWidget {
  const PostWithoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 140,
            width: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEFEFEF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Row(
                children: [
                  Text('You',style: TextStyle(color: Color(0xFF2196F3),fontSize: 10),),
                  SizedBox(width: 2,),
                  Text('Viewed Breaking News',style: TextStyle(fontSize: 10),),
                  SizedBox(width: 2,),
                  Text('Post',style: TextStyle(color: Color(0xFF2196F3),fontSize: 10),),
                  SizedBox(width: 2,),
                  Text('4w',style: TextStyle(fontSize: 10),),
                  SizedBox(width: 8,),
                  Text('18-07-2022',style: TextStyle(fontSize: 10),),

                ],
              ),
              SizedBox(height: 10,),
              Text("Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry. \nLorem Ipsum has been the industry's\n standard dummy text ever since the\n 1500s,",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('By:',style: TextStyle(fontSize: 10),),
                  SizedBox(width: 5,),
                  Text('Breaking News',style: TextStyle(color: Color(0xFF2196F3),fontSize: 10),),
                  SizedBox(width: 5,),
                  Text('4w',style: TextStyle(fontSize: 10),),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}