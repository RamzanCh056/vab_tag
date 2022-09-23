// import 'dart:async';
// import 'package:flutter/material.dart';
//
// import '../authentication/login.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   startTime() async {
//     var duration =  const Duration(seconds: 3);
//     return  Timer(duration, navigationPage);
//   }
//
//   void navigationPage() {
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginSignup()));
//   }
//
//   @override
//   void initState() {
//     startTime();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           Center(
//               child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: FittedBox(
//               fit: BoxFit.contain,
//               child: Text(
//                 'VibeTag',
//                 style: TextStyle(
//                   fontSize: 55,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   shadows: [
//                     Shadow(
//                       blurRadius: 10.0,
//                       color: Theme.of(context).primaryColor,
//                       offset: const Offset(5.0, 5.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 100),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   const Text(
//                     'Version: 1.0.0',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   CircularProgressIndicator(
//                     backgroundColor: Colors.white,
//                     valueColor: AlwaysStoppedAnimation<Color>(
//                       Theme.of(context).primaryColor,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // navigateToNextScreen() async {
//   //   SharedPreferences.getInstance().then((value) async {
//   //     preferences = value;
//   //     if (preferences.getBool('isLoggedIn') ?? false) {
//   //       // await dealLogin();
//   //     } else {
//   //       Future.delayed(const Duration(seconds: 2), () {
//   //         Navigator.pushAndRemoveUntil(
//   //             context,
//   //             MaterialPageRoute(builder: (_) => LoginScreen()),
//   //             (route) => false);
//   //       });
//   //     }
//   //     if (preferences.getString('deviceId') == null) {
//   //       DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//   //       if (Platform.isAndroid) {
//   //         AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//   //         registerDevice('${androidInfo.androidId}');
//   //         print(
//   //             'Running on ${androidInfo.model} and UUID: ${androidInfo.androidId}');
//   //       } else {
//   //         IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
//   //         registerDevice('${iosInfo.identifierForVendor}');
//   //         print(
//   //             'Running on ${iosInfo.utsname.machine} and UUID: ${iosInfo.identifierForVendor}');
//   //       }
//   //     } else {
//   //       StaticInfo.deviceId = preferences.getString('deviceId');
//   //     }
//   //   }).catchError((e) {
//   //     print(e);
//   //   });
//   // }
//
//   // registerDevice(String deviceId) async {
//   //   preferences = await SharedPreferences.getInstance();
//   //   final body = {"deviceid": deviceId, "websessionid": "123"};
//   //   final bodyJson = json.encode(body);
//   //   http
//   //       .post(Uri.parse(StaticInfo.baseUrlForDashboard! + 'registerdevice'),
//   //           headers: <String, String>{
//   //             'Content-Type': 'application/json; charset=UTF-8'
//   //           },
//   //           body: bodyJson)
//   //       .then((value) async {
//   //     if (value.statusCode == 200) {
//   //       String body = value.body;
//   //       Map map = jsonDecode(body);
//   //       print('Map: $map');
//   //       if (map['result'] == 'success') {
//   //         preferences.setString('deviceId', deviceId);
//   //         StaticInfo.deviceId = deviceId;
//   //       }
//   //     } else {}
//   //   });
//   // }
//
//   // dealLogin() async {
//   //   preferences = await SharedPreferences.getInstance();
//   //   String? name = preferences.getString('name');
//   //   final body = {
//   //     'accountname': name ?? '',
//   //     'accountpassword': preferences.getString('password'),
//   //   };
//   //   final bodyJson = json.encode(body);
//   //   String url = StaticInfo.baseUrlForDashboard! + StaticInfo.loginApi;
//   //   http
//   //       .post(Uri.parse(url),
//   //       headers: <String, String>{
//   //         'Content-Type': 'application/json; charset=UTF-8'
//   //       },
//   //       body: bodyJson)
//   //       .then((value) async {
//   //     if (StaticInfo.areLogsEnabled) {
//   //       StaticInfo.logs.add(
//   //           '$url---${value.statusCode}---${value.body}---${DateTime.now().millisecondsSinceEpoch}');
//   //       await preferences.setStringList('logs', StaticInfo.logs);
//   //     }
//   //     if (value.statusCode == 200) {
//   //       String body = value.body;
//   //       Map map = jsonDecode(body);
//   //       print(map);
//   //       String sessionId = map['response'][0]['websessionid'];
//   //       print(map);
//   //       if (sessionId != 'NoData') {
//   //         StaticInfo.loginUserModel = LoginUserModel.fromMap(map['data']);
//   //         StaticInfo.webSessionIdModel =
//   //             WebSessionIdModel.fromMap(map['response'][0]);
//   //         String binary = intTo8bitString(
//   //             StaticInfo.webSessionIdModel!.webpermissions!.toInt());
//   //         int a = 1;
//   //         for (int i = binary.length - 1; i >= 0; i--) {
//   //           if (binary[i] == '1' && i == binary.length - 1) {
//   //             StaticInfo.webPermissions.add(a);
//   //           } else {
//   //             if (i != binary.length - 1) {
//   //               a = a * 2;
//   //             }
//   //             if (binary[i] == '1') {
//   //               StaticInfo.webPermissions.add(a);
//   //             }
//   //           }
//   //         }
//   //         setState(() {});
//   //         if (preferences.containsKey('selectedLandingPage')) {
//   //           if (preferences.getString('selectedLandingPage') == 'Home Page') {
//   //             Navigator.pushAndRemoveUntil(
//   //                 context,
//   //                 MaterialPageRoute(builder: (_) => BiometricAuth()),
//   //                     (route) => false);
//   //           }
//   //         } else {
//   //           Navigator.pushAndRemoveUntil(
//   //               context,
//   //               MaterialPageRoute(builder: (_) => BiometricAuth()),
//   //               (route) => false);
//   //         }
//   //       }
//   //     } else {
//   //       Navigator.pushAndRemoveUntil(context,
//   //           MaterialPageRoute(builder: (_) => LoginScreen()), (route) => false);
//   //     }
//   //   });
//   // }
//
//   String intTo8bitString(int number, {bool prefix = false}) => prefix
//       ? '0x${number.toRadixString(2).padLeft(19, '0')}'
//       : '${number.toRadixString(2).padLeft(19, '0')}';
// }
