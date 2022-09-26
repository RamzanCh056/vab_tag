import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vab_tag/screens/extra-screens/memories_mobile.dart';
import 'package:vab_tag/screens/home/drawer.dart';

class BlogsTwo extends StatefulWidget {
  BlogsTwo({Key? key}) : super(key: key);

  @override
  State<BlogsTwo> createState() => _BlogsTwoState();
}

class _BlogsTwoState extends State<BlogsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Get.to(MemoriesMobile());
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset('images/morning-brew-db.png'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'You just need to know about COVID 19 ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Find out more ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
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
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Text(
                    'Popular posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Important Tips About Finding',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Group 482.png',
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                              height: 25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Color(0xffFAD61C),
                              onPressed: () {},
                              child: Text(
                                'Business',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Wow Gold',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white10,
                    backgroundImage: AssetImage('images/image4.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By: David Millan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "@david milon1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28 Jul 2020",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Important Tips About Finding',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Group 482.png',
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                              height: 25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Color(0xffFAD61C),
                              onPressed: () {},
                              child: Text(
                                'Business',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Wow Gold',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white10,
                    backgroundImage: AssetImage('images/image4.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By: David Millan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "@david milon1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28 Jul 2020",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Important Tips About Finding',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Group 482.png',
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                              height: 25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Color(0xffFAD61C),
                              onPressed: () {},
                              child: Text(
                                'Business',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Wow Gold',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white10,
                    backgroundImage: AssetImage('images/image4.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By: David Millan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "@david milon1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28 Jul 2020",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Important Tips About Finding',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Group 482.png',
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                              height: 25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Color(0xffFAD61C),
                              onPressed: () {},
                              child: Text(
                                'Business',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Wow Gold',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white10,
                    backgroundImage: AssetImage('images/image4.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By: David Millan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "@david milon1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28 Jul 2020",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Important Tips About Finding',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Group 482.png',
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                              height: 25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              color: Color(0xffFAD61C),
                              onPressed: () {},
                              child: Text(
                                'Business',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Wow Gold',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white10,
                    backgroundImage: AssetImage('images/image4.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By: David Millan",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "@david milon1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "28 Jul 2020",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Cars and vehicles',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Business',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Comedy',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Economices & trade',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Education',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Entertainment',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Movies & animation',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Gaming',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'History & facts',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Life style',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Nature',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'News & politics',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Peoples & nations',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Pets & animals',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Places & regions',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Science & technology',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Sports',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Travel & events',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                      height: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      color: Color(0xffFAD61C),
                      onPressed: () {},
                      child: Text(
                        'Others',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('c 2020 Vibetag',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text('About',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                  Spacer(),
                  Text(
                    'Blog',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'More',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
