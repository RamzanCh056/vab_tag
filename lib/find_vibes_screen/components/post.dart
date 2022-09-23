import 'package:flutter/material.dart';
class Post extends StatelessWidget {
  final String ? title;
  const Post({
    Key? key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xFF333333),
            borderRadius: BorderRadius.circular(10)
        ),
        child: ListTile(
          leading: CircleAvatar(backgroundColor: Colors.black,),
          title: Text(title!, style: TextStyle(color: Colors.white),),
        )
    );
  }
}