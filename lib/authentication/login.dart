import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:vab_tag/authentication/forgot_password.dart';
import 'package:vab_tag/homepage.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
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
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("Email",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
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
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text("Password",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(Icons.visibility),
                                        hintText: 'Password',
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
                                    ListTile(
                                      leading: Theme(
                                        data: Theme.of(context).copyWith(
                                          unselectedWidgetColor: Colors.white,
                                        ),
                                        child: Checkbox(
                                          checkColor: Colors.black,
                                          activeColor: Colors.white,
                                          value: _checkbox,
                                          onChanged: (value) {
                                            setState(() {
                                              _checkbox = !_checkbox;
                                            });
                                          },
                                        ),
                                      ),
                                      title: Text('Remember me',
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      trailing: GestureDetector(
                                        onTap: () {
                                          Get.to(Forgot_password());
                                        },
                                        child: Text("Forgot password?",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50.0,
                                          child: RaisedButton(
                                            onPressed: () {
                                              Get.to(MyHomePage());
                                              //  Get.to(Welcome());
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        80.0)),
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
                                                      BorderRadius.circular(
                                                          13.0)),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                    maxWidth: 300.0,
                                                    minHeight: 50.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Login",
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          Text("User Name",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'UserName',
                                        prefixIcon: Icon(
                                          Icons.person,
                                        ),
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
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          Text("Email",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Email',
                                        prefixIcon: Icon(
                                          Icons.email,
                                        ),
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
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          Text("Password",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(Icons.visibility),
                                        hintText: 'Password',
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
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          Text("Confirm Password",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(Icons.visibility),
                                        hintText: 'Confirm Password',
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
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          Text("Genter",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        suffixIcon: Icon(Icons
                                            .arrow_drop_down_circle_outlined),
                                        //  prefixIcon: Icon(Icons.sel),
                                        hintText: 'Genter',
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
                                    Row(
                                      children: [
                                        Theme(
                                          data: Theme.of(context).copyWith(
                                            unselectedWidgetColor: Colors.white,
                                          ),
                                          child: Checkbox(
                                            checkColor: Colors.black,
                                            activeColor: Colors.white,
                                            value: _checkbox,
                                            onChanged: (value) {
                                              setState(() {
                                                _checkbox = !_checkbox;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                            'By creating your account, you agree to our\nTerms of Use & Privacy Policy',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50.0,
                                          child: RaisedButton(
                                            onPressed: () {
                                              //  Get.to(Welcome());
                                            },
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        80.0)),
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
                                                      BorderRadius.circular(
                                                          13.0)),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                    maxWidth: 300.0,
                                                    minHeight: 50.0),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Signup",
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
