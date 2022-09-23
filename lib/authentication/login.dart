import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:vab_tag/authentication/after_registration.dart';
import 'package:vab_tag/authentication/forgot_password.dart';
import 'package:vab_tag/authentication/signup_screen.dart';

import 'login_screen.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(

              child: Container(
                  color: HexColor("#FF9200"),
                  height: 800,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                      Container(
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.white,
                          tabs: [
                            Tab(text: "Log In"),
                            Tab(text: "Register"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TabBarView(
                          children: [
                            LoginScreen(),
                            SignUpScreen(),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ));
  }
}
