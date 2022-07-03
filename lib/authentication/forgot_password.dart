import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({Key? key}) : super(key: key);

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                color: HexColor("#FF9200"),
                height: 960,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          color: Colors.white,
                          width: double.infinity,
                          child: Image(
                              color: Colors.white.withOpacity(0.2),
                              colorBlendMode: BlendMode.modulate,
                              image: AssetImage(
                                'images/login.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        Positioned(
                            // bottom: 20,
                            top: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Start Vibetag",
                                          style: TextStyle(
                                              color: HexColor("#FF9200"),
                                              fontSize: 18)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "Lorum ipsum dolor ipsum start vibetage\nwith lorum ispum and dolor ipsium start\nvibetage with lorum ipsum",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Forgot your Password",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40.0,
                                child: RaisedButton(
                                  onPressed: () {
                                    //  Get.to(Welcome());
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(13.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 300.0, minHeight: 50.0),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Eail Send successfuly",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Email",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Email UserName',
                                    prefixIcon: Icon(Icons.email),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50.0,
                                child: RaisedButton(
                                  onPressed: () {
                                    //  Get.to(Welcome());
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(80.0)),
                                  padding: EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(13.0)),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 300.0, minHeight: 50.0),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Recover",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: HexColor("#FF9200"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
