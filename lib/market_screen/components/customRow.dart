import 'package:flutter/material.dart';
class CustomRow extends StatelessWidget {
  final String ? title;
  final IconData ?icon;
  const CustomRow({
    Key? key, this.title, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(children: [
        Row(children: [
          Icon(icon,color: Colors.orange,),
          SizedBox(width: 10,),
          Text(title!)
        ],)
      ],),
    );
  }
}