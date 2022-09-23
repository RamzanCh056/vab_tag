import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:loading_indicator/loading_indicator.dart';
import 'package:vab_tag/authentication/login_screen.dart';
import 'package:vab_tag/res/static_info.dart';

import 'login.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({Key? key}) : super(key: key);

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var message;
  var errorText;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
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

                            SizedBox(
                              height: 20,
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
                                  TextFormField(
                                    controller: emailController,
                                    onChanged: (value) {
                                      //Do something with the user input.
                                    },
                                    decoration: InputDecoration(
                                      errorStyle:
                                      const TextStyle(color: Colors.redAccent, fontSize: 15),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'someone@gmail.com',
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'This field is required';
                                      } else if (!value.contains('@')) {
                                        return 'Please Enter Valid Email';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            isLoading
                                ? const Center(
                              child: SizedBox(
                                  width: 80,
                                  child: LoadingIndicator(
                                      indicatorType: Indicator.ballBeat,
                                      colors: [Colors.deepPurple],
                                      strokeWidth: 2,
                                      pathBackgroundColor: Colors.blue)),
                            ):
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50.0,
                                  child: RaisedButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        recoverPassword();
                                      }
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
                                  onTap: () {
                                    Get.to(LoginSignup());
                                  },
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
                                  onTap: () {
                                    Get.to(LoginSignup());
                                  },
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
      ),
    );
  }
  recoverPassword() async{
    isLoading = true;
    setState(() {});
    var headers = {
      'Cookie': 'PHPSESSID=e7add58683ede1682a95df88c962ef5e; _us=1662922660; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-10%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest('POST', Uri.parse(StaticInfo.baseUrl));
    request.fields.addAll({
      'type': 'reset_pass',
      'email':  emailController.text,
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      //print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
      var body = jsonDecode(res);
      var newError;
      if (body['errors'] != null) {
        errorText = body['errors'];
        newError = errorText['error_text'];
        Fluttertoast.showToast(msg: "$newError");
        print("i am Error text $newError");
        setState(() {
          isLoading = false;
        });
      } else {

        message = body['api_text'];
        print("i am message $message");
        Fluttertoast.showToast(msg: "$message send check email");
        print("Successfully send");
        setState(() {
          isLoading = false;
        });
      }

    }
    else {
    print(response.reasonPhrase);
    Fluttertoast.showToast(msg: "Something went wrong try again letter");
    print("api not working");
    setState(() {
      isLoading = false;
    });
    }


  }
}
