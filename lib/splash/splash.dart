import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vab_tag/res/static_info.dart';
import 'package:vab_tag/screens/authentication/login.dart';
import 'package:http/http.dart' as http;
import '../screens/authentication/login_screen.dart';
import '../screens/home/home_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }


  late SharedPreferences preferences;

   navigationPage() {
    SharedPreferences.getInstance().then((value) async {
      preferences = value;
      if (preferences.getBool('isLoggedIn') ?? false) {
        await loginFunction();
      } else {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => LoginSignup()),
                  (route) => false);
        });
      }
    }).catchError((e) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => LoginSignup()), (route) => false);
      });
    });
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => LoginSignup(),
    //     ));
  }
  var message;
  var errorText;
  @override
  void initState() {

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Text("Welcom" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              // Padding(padding: EdgeInsets.only(bottom: 30.0),child:new Image.asset('assets/images/logos.jpeg',height: 100.0, width: 100, fit: BoxFit.scaleDown,))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'images/logo.png',
                width: animation.value * 300,
                height: animation.value * 300,
              ),
            ],
          ),
        ],
      ),
    );
  }
  loginFunction() async {
    // print("on login");
    // print("email == ${preferences.getString('email').toString()}");
    // print("password == ${preferences.getString('password').toString()}");
    var headers = {
      'Cookie':
      '_us=1662765015; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-08%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; PHPSESSID=f9bb8e6ac6beab30ca26a90c68848b5c; _us=1662751389; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-08%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest('POST', Uri.parse(StaticInfo.baseUrl));
    request.fields.addAll({
      'type': 'user_login',
      'username': preferences.getString('email').toString(),
      'password': preferences.getString('password').toString(),
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
      } else {

        Get.to(MyHomePage());
        preferences.setBool('isLoggedIn', true);
        var newMessage;
        message = body['messages'];
        newMessage = message['respond_message_1'];
        StaticInfo.userIdLogin = body['user_id'];
        print("i am user id in splash ${StaticInfo.userIdLogin}");
      }
      ;
    } else {
      Get.to(LoginSignup());
    }
  }

}
