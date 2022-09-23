import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/profile/artboard17.dart';

import 'home/drawer.dart';

class ArtBoard13 extends StatefulWidget {
  ArtBoard13({Key? key}) : super(key: key);

  @override
  State<ArtBoard13> createState() => _ArtBoard13State();
}

class _ArtBoard13State extends State<ArtBoard13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EDED),
      drawer: Draweer(),
      appBar: AppBar(
        backgroundColor: Color(0xffFF9200),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xffFF9200),
                      ),
                      hintText: 'Search...',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                child: Image.asset(
                  'images/Exclusion 1.PNG',
                  height: 29,
                  fit: BoxFit.fill,
                ),
                // backgroundColor: Colors.white10,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Get.to(ArtBoard17());
              },
              child: Container(
                child: Image.asset(
                  'images/Path 2.png',
                  height: 25,
                  fit: BoxFit.fill,
                ),
                // backgroundColor: Colors.white10,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Image.asset(
              'images/oops.PNG',
              height: 480,
              fit: BoxFit.fill,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
