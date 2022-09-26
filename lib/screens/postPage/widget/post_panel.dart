import 'package:flutter/material.dart';
class PostPanel extends StatelessWidget {
  const PostPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 300,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    title: Text("They Told Carlton he"),
                    subtitle: Text(
                      "By william",
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 70, bottom: 10),
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "4M+views",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              )),

        ],
      ),
    );
  }
}
