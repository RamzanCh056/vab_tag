import 'package:flutter/material.dart';
import 'package:vab_tag/chatroom.dart';

class ChatProfile extends StatefulWidget {
  ChatProfile({Key? key}) : super(key: key);

  @override
  State<ChatProfile> createState() => _ChatProfileState();
}

class _ChatProfileState extends State<ChatProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      drawer: Drawer(),
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
                  'images/Exclusion 2.png',
                  height: 25,
                  fit: BoxFit.fill,
                ),
                // backgroundColor: Colors.white10,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
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
            Container(
              height: 65,
              color: Color(0xffFFFFFF),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: Color(0xffFFBB60),
                          )),
                      InkWell(
                        onTap: () {
                          _showMyDialog();
                        },
                        child: Container(
                          child: Image.asset(
                            'images/Mask Group 285.png',
                            height: 45,
                            fit: BoxFit.fill,
                          ),
                          // backgroundColor: Colors.white10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ilizbat baby',
                            style: TextStyle(color: Colors.black87),
                          ),
                          Text(
                            '1 day ago',
                            style: TextStyle(color: Colors.grey.shade300),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green.shade500,
                            radius: 4,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '',
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffFF9200), shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffFF9200),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffFF9200),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Color(0xffFF9200),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 382,
            ),
            Center(
              child: Text(
                'Mon 12, 8, 2020',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hi, How are you ..............?',
                          // style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      // height: 45,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Color(0xffFF9200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Hi, i am really good!!!.......',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'What about you baby?',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Container(
              height: 60,
              color: Color(0xffF5F5F5),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Color(0xffFFBB60),
                      )),
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            //Do something with the user input.
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.emoji_emotions),
                            hintText: 'Write the message here...',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffFF9200),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatRoom()));
                            },
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mic,
                      size: 35,
                      color: Color(0xff9E9E9E),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.orange, width: 2)),
                                child: Image.asset(
                                  'images/Mask Group 285.png',
                                  height: 85,
                                  fit: BoxFit.fill,
                                ),
                                // backgroundColor: Colors.white10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/abc.PNG',
                                  height: 25,
                                  fit: BoxFit.fill,
                                ),
                                // backgroundColor: Colors.white10,
                              ),
                              SizedBox(
                                height: 60,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ilizbat baby',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '@Ilizbat baby1',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Active 2h ago',
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade300),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.call,
                                        color: Color(0xffFF9200),
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.video_call,
                                        color: Color(0xffFF9200),
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.games,
                                        color: Color(0xffFF9200),
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.list_sharp,
                                        color: Color(0xffFF9200),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Media Libary',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
