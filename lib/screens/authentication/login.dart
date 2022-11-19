import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vab_tag/screens/authentication/signup_screen.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.black,
            toolbarHeight: 40,
           leading:  Container(
             margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
             height: 20,
             width: double.infinity,
             child: Image(
                 image: AssetImage(
                   'assets/vts.png',
                 ),
                 fit: BoxFit.cover),
           ),
          ),
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
                            height: 250,
                            color: Colors.white,
                            width: double.infinity,
                            child: Image(
                                color: Colors.white.withOpacity(0.6),
                                colorBlendMode: BlendMode.modulate,
                                image: AssetImage(
                                  'images/login.png',
                                ),
                                fit: BoxFit.cover),
                          ),
                          Positioned(
                              // bottom: 20,
                              top: 120,
                              left: 20,
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22)),
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
                          unselectedLabelColor: Colors.white54,
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
