import 'package:flutter/material.dart';
class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            height: 120,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.image,
                    color: Colors.grey.shade400,
                    size: 40,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 5,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Assssss",
                      style: TextStyle(color: Colors.white,fontSize: 13),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 5,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Assssss",
                      style: TextStyle(color: Colors.white,fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Text("Volvo Break Hose - Rear"),
                  Text("\$9.70",style: TextStyle(color: Colors.orange),),
                ],),
            ),
          ),
        ],
      ),
    );
  }
}