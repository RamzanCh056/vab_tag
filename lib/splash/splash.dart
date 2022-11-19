import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vab_tag/screens/authentication/login.dart';


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


  //late SharedPreferences preferences;
  void navigationPage() {
    // SharedPreferences.getInstance().then((value) async {
    //   preferences = value;
    //   if (preferences.getBool('isLoggedIn') ?? false) {
    //     Future.delayed(const Duration(seconds: 2), () {
    //       Navigator.pushAndRemoveUntil(
    //           context,
    //           MaterialPageRoute(builder: (_) => MyHomePage ()),
    //               (route) => false);
    //     });
    //   } else {
    //     Future.delayed(const Duration(seconds: 2), () {
    //       Navigator.pushAndRemoveUntil(
    //           context,
    //           MaterialPageRoute(builder: (_) => LoginSignup()),
    //               (route) => false);
    //     });
    //   }
    // }).catchError((e) {
    //   Future.delayed(const Duration(seconds: 2), () {
    //     Navigator.pushAndRemoveUntil(context,
    //         MaterialPageRoute(builder: (_) => LoginSignup()), (route) => false);
    //   });
    // });
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginSignup(),
        ));
  }
  @override
  void initState() {
    super.initState();
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
}
