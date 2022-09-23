import 'package:flutter/material.dart';

class SummaryRow extends StatelessWidget {
  final String ? title;
  final String ? price;
  final Color ? color;
  final Color? rang;

  const SummaryRow({this.title, this.price, this.color,this.rang= Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [

          Text(title!,style: TextStyle(fontSize: 17, ),),
          Spacer(),
          Text(price!,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}