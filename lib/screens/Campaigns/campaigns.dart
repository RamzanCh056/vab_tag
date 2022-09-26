import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../common/top_appbar.dart';
import '../postPage/post_page.dart';

class Campaigns extends StatelessWidget {
  const Campaigns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(
        child: ListView(
          children: [
            TopAppbar(),
            AppBar(
              backgroundColor: const Color(0xffFF9200),
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
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Color(0xffFF9200),
                                )),
                            hintText: 'Search...',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/mesge.png"),
                            fit: BoxFit.cover)),

                    // ),
                    // backgroundColor: Colors.white10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dropdown.png"),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(PostPage());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFFD9225),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Balance",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "£0.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Campaigns",
                        style: TextStyle(color: Color(0xFFFD9225)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          // margin: EdgeInsets.only(right: 250),
                          width: 100,
                          height: 3,
                          color: Color(0xFFFD9225))
                    ],
                  ),
                  Text(
                    "Campaigns",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Wallet & Credits",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/eye.svg",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Add preview")
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFE6E6E6), shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/male.svg"),
                    ),
                    title: Text(
                      "Company",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Location",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("Description",
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("T Title",
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFFFFFF), Color(0xFFE0E0E0)])),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Steper
            Container(
              width: 300,
              height: 180,
              child:
                  Stepper(elevation: 0, type: StepperType.horizontal, steps: [
                Step(
                    title: Text(""),
                    content: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Media File")),
                    state: StepState.complete,
                    isActive: true),
                Step(title: Text(""), content: Text("Details")),
                Step(title: Text(""), content: Text("Targeting")),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/photos.svg",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Media")
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                        "Your current wallet balance is: 0, please top up your walletto continue.",
                        style:
                            TextStyle(color: Color(0xFFFD9225), fontSize: 17)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("Top up",
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text("Company name", style: TextStyle(fontSize: 17)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // TextField
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          focusColor: Color(0xFFF0F0F0),
                          hintText: "Name here",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      "Image / Video",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      "Select a image for your campaign",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFFFFFF), Color(0xFFDCDCDC)])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/photoicon.svg"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Select Photo & Videos",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(primary: Color(0xFFFD9225)),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "c 2020 Vibetag",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "Language",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF3B3B3B)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "About",
                          style: TextStyle(color: Color(0xFF3B55FF)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Blog",
                          style: TextStyle(color: Color(0xFF3B55FF)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Verification",
                          style: TextStyle(color: Color(0xFF3B55FF)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "More",
                          style: TextStyle(color: Color(0xFF3B55FF)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
