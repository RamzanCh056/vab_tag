import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:loading_indicator/loading_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vab_tag/res/static_info.dart';

import '../home/home_page.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _checkbox = false;
  bool obc = true;
  var message;
  var errorText;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: formKey,
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
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      errorStyle:
                          const TextStyle(color: Colors.redAccent, fontSize: 15),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'UserName',
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
                        return 'Please Enter UserName';
                      }
                      return null;
                    },
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
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: passwordController,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    obscureText: obc,
                    decoration: InputDecoration(
                      errorStyle:
                          const TextStyle(color: Colors.redAccent, fontSize: 15),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obc = !obc;
                            });
                          },
                          child: obc
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off)),
                      hintText: 'Password',
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
                        return 'Please Enter password';
                      }
                      return null;
                    },
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
                    Expanded(

                      child: Text('Remember me',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ),
                    Text("Forgot password?",
                        style: TextStyle(
                          color: Colors.white,
                        )),


                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                isLoading
                    ? Center(
                        child: SizedBox(
                            width: 90,
                            child: Image.asset("images/loading.gif")
                            // LoadingIndicator(
                            //     indicatorType: Indicator.ballBeat,
                            //     colors: [Colors.deepPurple],
                            //     strokeWidth: 2,
                            //     pathBackgroundColor: Colors.blue)
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45.0,
                            child: RaisedButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {

                                  loginfun();
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
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
                                    borderRadius: BorderRadius.circular(13.0)),
                                child: Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 300.0, minHeight: 50.0),
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
                  height: 30,
                ),



              ],
            ),
          ),
        ),
        Expanded(

          child: SingleChildScrollView(

            child: Column(children: [],)
          ),
        ),
        Container(
          //height: 60,
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("C 2020 Vibetag", style: TextStyle(
                      color: Colors.black, fontSize: 16
                    ),),
                    Text("Language",style: TextStyle(
                        color: Colors.black, fontSize: 16
                    ),),

                  ],),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("About", style: TextStyle(
                          color: Colors.blue, fontSize: 14
                      ),),
                      SizedBox(width: 10,),
                      Text("Blog",style: TextStyle(
                          color: Colors.blue, fontSize: 14
                      ),),
                      SizedBox(width: 10,),
                      Text("Verification",style: TextStyle(
                          color: Colors.blue, fontSize: 14
                      ),),
                      SizedBox(width: 10,),
                      Text("More",style: TextStyle(
                          color: Colors.blue, fontSize: 14
                      ),),

                    ],),
                  SizedBox(height: 2,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  loginfun() async {
    isLoading = true;
    setState(() {});
    //SharedPreferences preferences = await SharedPreferences.getInstance();
    var headers = {
      'Cookie':
          '_us=1662765015; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-08%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; PHPSESSID=f9bb8e6ac6beab30ca26a90c68848b5c; _us=1662751389; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-08%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest('POST', Uri.parse(StaticInfo.baseUrl));
    request.fields.addAll({
      'type': 'user_login',
      'username': emailController.text,
      'password': passwordController.text,
      's': DateTime.now().toString()
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
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

        Get.to(MyHomePage());
        var newMessage;
        message = body['messages'];
        newMessage = message['respond_message_1'];
        StaticInfo.userIdLogin = body['user_id'];
        print("i am user id After Login ${StaticInfo.userIdLogin}");
        print("i am new message $newMessage");
        Fluttertoast.showToast(msg: "$newMessage");
        print("Successfully Login");
        setState(() {
          isLoading = false;
        });
        // await preferences.setBool('isLoggedIn', true);
        // await preferences.setString('email', emailController.text);
        // await preferences.setString('password', passwordController.text);
        // await preferences.setString('LoginId', StaticInfo.userIdLogin.toString());
      }
      ;
    } else {
      print(response.reasonPhrase);
      Fluttertoast.showToast(msg: "Something went wrong try again letter");
      print("api not working");
      setState(() {
        isLoading = false;
      });
    }
  }
}
