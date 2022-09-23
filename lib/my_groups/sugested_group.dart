import 'package:flutter/material.dart';

class SuggestedGroup extends StatefulWidget {
  const SuggestedGroup({Key? key}) : super(key: key);

  @override
  State<SuggestedGroup> createState() => _SuggestedGroupState();
}

class _SuggestedGroupState extends State<SuggestedGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 45.0,
            width: double.infinity,
            color: Colors.white,
            child: Center(
                child: Text(
              "Start Your Group",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            height: 200.0,
            width: double.infinity,
            color: Colors.grey.shade400,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.infinity,
            color: Colors.black,
            child: Row(
              children: [
                Icon(
                  Icons.credit_card,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Create Group",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Group Name",
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Name",
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Group URL",
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Location",
                    fillColor: Colors.grey.shade400,
                    suffixIcon: Container(
                      width: 130.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                          child: Text(
                            "Create Link ID",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Group Description",
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Discription",
                      fillColor: Colors.grey.shade400,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Group ",
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Group Type",
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Public",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10
                ),
                Text(
                  "Group Category",
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Category",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Cars",
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                    ),
                    Text(
                      "Go Back",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                            "Publish",
                            style: TextStyle(fontWeight: FontWeight.bold,),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
