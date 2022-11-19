import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vab_tag/res/static_info.dart';
import 'package:vab_tag/screens/extra-screens/create_ad_mobile.dart';
import 'package:vab_tag/screens/home/story_page.dart';
import 'package:vab_tag/screens/home/video_player.dart';
import 'package:video_player/video_player.dart';
import '../../common/appbar.dart';
import '../../common/colors.dart';
import '../../common/top_appbar.dart';
import '../../models/suspnser_model.dart';
import '../Campaigns/campaigns.dart';
import '../trending_event/trending_event.dart';
import 'comments_screen.dart';
import 'drawer.dart';
import 'maps.dart';

var postData = [];
var getUserInfo;
var showLocation;
String? addres;

enum SingingCharacter { lafayette, jefferson }

SingingCharacter? _character = SingingCharacter.lafayette;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  List<String> picTabs = [
    'assets/menue.svg',
    'assets/image-svgrepo-com.svg',
    'assets/play-alt-svgrepo-com.svg',
    'assets/audio-melody-music-37-svgrepo-com.svg',
    'assets/file-document-svgrepo-com.svg',
    'assets/location-on-map-svgrepo-com.svg',
    'assets/download-arrow-circle-svgrepo-com.svg',
    'assets/live-streamin.svg',
  ];

  // late VideoPlayerController controller;
  TabController? _tabController;
  int? bufferDelay;

  @override
  void initState() {
    // loadVideoPlayer();
    //print("init called");
    // SharedPreferences.getInstance().then((value) {
    //   preferences = value;
    //   setState(() {});
    // });
    getUserData();
    getHomeData();
    setState(() {});
    // _timer = Timer.periodic(
    //   const Duration(seconds: 2),
    //   (Timer t) => updateState(),
    // );


    // initializePlayer();
    _tabController = TabController(length: 6, vsync: this);
    //  loadVideoPlayer();

    super.initState();
  }

  // loadVideoPlayer(){
  //   controller = VideoPlayerController.asset(videoFile.toString());
  //   controller.addListener(() {
  //     setState(() {});
  //   });
  //   controller.initialize().then((value){
  //     setState(() {});
  //   });
  //
  // }
  updateState() {
    print("calling get home from controller");
    setState(() {
      getHomeData();
      getUserData();
      getSusponse();
    });
  }

  Timer? _timer;

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
    _tabController?.dispose();
  }

  getHomeData() async {
    // print('lOGIN ID IN PREFF ${preferences!.getString('LoginId')}');
    // StaticInfo.userIdLogin = preferences!.getString('LoginId').toString();
    // print('lOGIN ID IN Static PREFF ${StaticInfo.userIdLogin}');
    var headers = {
      'Cookie':
          'PHPSESSID=149a56db22f52ca849a4c8463cf8ddc5; _us=1663499099; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-17%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://vibetag.com/app_api.php'));
    request.fields.addAll({
      'type': 'get_home_posts',
      'user_id': StaticInfo.userIdLogin,
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
      var body = jsonDecode(res);
      postData = body['posts_data'];
      print("post data is $postData");
    } else {
      print(response.reasonPhrase);
    }
  }

  getUserData() async {
    // print('lOGIN ID IN getuserdata PREFF ${preferences!.getString('LoginId')}');
    //StaticInfo.userIdLogin = preferences!.getString('LoginId').toString();
    var headers = {
      'Cookie':
          'PHPSESSID=149a56db22f52ca849a4c8463cf8ddc5; _us=1663512156; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-17%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%7B%26quot%3B44%26quot%3B%3A%26quot%3B44%26quot%3B%2C%26quot%3B42%26quot%3B%3A%26quot%3B42%26quot%3B%2C%26quot%3B45%26quot%3B%3A%26quot%3B45%26quot%3B%7D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://vibetag.com/app_api.php'));
    request.fields.addAll({
      'type': 'get_user_data',
      'user_profile_id': StaticInfo.userIdLogin,
      'user_id': StaticInfo.userIdLogin,
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
      var body = jsonDecode(res);
      getUserInfo = body['user_data'];
      print("User info is $getUserInfo");

      //getVideo = getUserInfo['posts_data'][0]['postFile_full'];
      //print('the video url $getVideo');

    } else {
      print(response.reasonPhrase);
    }
  }

  bool isLoad = false;

  createPost() async {
    setState(() {
      isLoad = true;
    });
    var headers = {
      'Cookie': 'PHPSESSID=f473f28ca40b056fd1a23e624a61bccc; _us=1667727587; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-11-05%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://vibetag.com/app_api.php'));
    request.fields.addAll({

      'type': 'new_post',
      'user_id': StaticInfo.userIdLogin,
      'postText': postController.text,
      'page_id': '',
      'event_id': '',
      'group_id': '',
      'postPrivacy': '',
      'postMap': location.text,
      'lat_': latitude.toString(),
      'lng_': longitude.toString(),
      'album_name': '',
      'feeling_type': '',
      'feeling': '',
      'postSticker': '',
      'post_color': '',
      'postRecord': '',
      'answer[]': ''
    });
    if (imageFile != null) {
      setState(() {
        isLoad = false;
      });
      request.files
          .add(await http.MultipartFile.fromPath('postFile', imageFile!.path));
      print("image file woth path is ${imageFile!.path}");
    }
    if (_video != null) {
      setState(() {
        isLoad = false;
      });
      request.files
          .add(await http.MultipartFile.fromPath('postVideo', _video!.path));
      print("video path is ${_video!.path}");
    }
  //  request.files.add(await http.MultipartFile.fromPath('postFile', '/path/to/file'));
  //  request.files.add(await http.MultipartFile.fromPath('postVideo', '/path/to/file'));
   // request.files.add(await http.MultipartFile.fromPath('postMusic', '/path/to/file'));
   // request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      //print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
      var body = jsonDecode(res);
      var msg = body['api_text'];
      Fluttertoast.showToast(msg: "$msg");
      setState(() {
        isLoad = false;
      });
      setState(() {
        Navigator.pop(context);
        postController.clear();
        imageFile = null;
        _video = null;
        _videoPlayerController!.dispose();
        location.text = "";

      });


    } else {
      print(response.reasonPhrase);
      setState(() {
        isLoad = false;
      });
    }

  }

  showPlacePicker() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return
            PlacePicker(
            apiKey: Platform.isAndroid?'AIzaSyCaCSJ0BZItSyXqBv8vpD1N4WBffJeKhLQ' : "AIzaSyCaCSJ0BZItSyXqBv8vpD1N4WBffJeKhLQ",
            hintText: "Select Location",
            searchingText: "Please wait ...",
            selectText: "Select place",
            outsideOfPickAreaText: "Place is not in area",
            initialPosition: addressLatLng,
            selectInitialPosition: true,
            onPlacePicked: (result) {
              location.text= result.formattedAddress!;
              addressLatLng = LatLng(
                  result.geometry!.location.lat, result.geometry!.location.lng);
                   latitude = result.geometry!.location.lat;
                   longitude = result.geometry!.location.lng;

              Navigator.of(context).pop();
              setState(() {
              });
            },
          );
        },
      ),
    );
    setState(() {});
  }

  getImageGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  getSusponse() async {
    var headers = {
      'Cookie':
      'PHPSESSID=149a56db22f52ca849a4c8463cf8ddc5; _us=1663499099; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-17%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://vibetag.com/app_api.php'));
    request.fields.addAll({
      'type': 'get_home_posts',
      'user_id': StaticInfo.userIdLogin,
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
      var body = jsonDecode(res);
      postData = body['posts_data'];
      for (int i = 0; i < postData.length; i++) {
        SusponsersModel getList = SusponsersModel.fromMap(postData[i]);
        Susponse.add(getList);
      }
     // print("post data is $postData");
    } else {
      print(response.reasonPhrase);
    }
  }
  File? imageFile;

  // File? videoFile;
  DateTime? TimeDate;
  SharedPreferences? preferences;
  final postController = TextEditingController();
  final Set<Marker> markers = Set();
  double?  longitude;
  double? latitude;
  // LatLng? longitude;
  // LatLng? longitude;

  final location = TextEditingController();
  // var youLoc;

  bool textFieldSize = false;
  File? _video;
  File? _cameraVideo;
  VideoPlayerController? _videoPlayerController;
  ChewieController? chewieController;
  VideoPlayerController? _cameraVideoPlayerController;

  _pickVideo() async {
    XFile? pickedFile =
        await ImagePicker().pickVideo(source: ImageSource.gallery);

    _video = File(pickedFile!.path);

    _videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController!.play();
      });
    chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      aspectRatio: _videoPlayerController!.value.aspectRatio,
      autoPlay: false,
      looping: true,
      materialProgressColors: ChewieProgressColors(
          playedColor: Colors.red,
          bufferedColor: kAppColor,
          //  backgroundColor: Colors.green,
          handleColor: Colors.red
      ),);
  }

  List<SusponsersModel> Susponse = [];
  LatLng addressLatLng = const LatLng(31.5204, 74.3587);
  late GoogleMapController _googleMapController;

//  static const LatLng showLocation = const LatLng(31.975697, 35.859400);
  // void launchMapsUrl(index) async {
  //   final url = 'https://www.google.com/maps/search/?api=1&query=${widget.users[index].lat!},${widget.users[index].lng!}';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const Draweer(),
      backgroundColor: Colors.grey.shade300,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(93),
          child: Column(
            children: [
              //
              SizedBox(
                height: 30,
              ),
              TopAppbar(),
              CommonAppBar(),
            ],
          )),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage("images/image3.png"),
                    height: height * 0.25,
                    width: width * 1.0,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.21,
                      left: width * 0.81,
                    ),
                    child: const Icon(
                      Icons.circle,
                      size: 8.0,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.21,
                      left: width * 0.86,
                    ),
                    child: const Icon(
                      Icons.circle,
                      size: 8.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.21,
                      left: width * 0.91,
                    ),
                    child: Icon(
                      Icons.circle,
                      size: 8.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              FutureBuilder(
                  future: getUserData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data != null || getUserInfo != null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          // scrollDirection: ax,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1, //photoList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: height * 0.12,
                              width: width * 1.0,
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            _showMyDialog3();
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.amberAccent,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  getUserInfo["avatar"],
                                                ),
                                                //   fit: BoxFit.fill
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              getUserInfo["first_name"],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              getUserInfo["last_name"],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "@ ${getUserInfo["username"]}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        // Text(
                                        //   getUserInfo["country_id"],
                                        //   style: TextStyle(
                                        //     color: Colors.grey,
                                        //     fontSize: 10.0,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "Posts",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                maxLines: 1,
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                getUserInfo['details']
                                                    ["post_count"],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Following",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                getUserInfo['details']
                                                    ["following_count"],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                "Followers",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                getUserInfo['details']
                                                    ["followers_count"],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.02,
                ),
                child: Text(
                  "Moments",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              // ListView.builder(
              //     physics: ScrollPhysics(),
              //   shrinkWrap: true,
              //   itemCount: 3,
              //     itemBuilder: (context,index){
              //     return GestureDetector(
              //       onTap: (){
              //         print("Hey link === ${Susponse[index].ad_media!}");
              //       },
              //       child: Column(
              //   children: [
              //       GestureDetector(
              //         onTap: (){
              //           print("Hey link === ${Susponse[index].ad_media!}");
              //           print("Hey link === ${Susponse[index].name!}");
              //         },
              //
              //         child: Container(
              //
              //             child: Text(Susponse[index].name!)),
              //       ),
              //   ],
              //       ),
              //     );
              //
              // }),
              FutureBuilder(
                  future: getUserData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data != null || getUserInfo != null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          // scrollDirection: ax,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 1, //photoList.length,
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 165,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: Colors.amberAccent,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                getUserInfo["avatar"],
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(YourStory());
                                          },
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: height * 0.08,
                                              width: width * 0.08,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image(
                                                image: AssetImage(
                                                    "images/image6.png"),
                                                height: height * 0.1,
                                                width: width * 0.1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Container(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: SvgPicture.asset(
                                          "images/Mask Group 97.svg",
                                          height: 165,
                                        )),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: SvgPicture.asset(
                                        "images/Mask Group 97.svg",
                                        height: 165,
                                      )),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg",
                                        height: 165,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: SvgPicture.asset(
                                        "images/Mask Group 97.svg",
                                        height: 165,
                                      )),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: SvgPicture.asset(
                                        "images/Mask Group 97.svg",
                                        height: 165,
                                      )),
                                ],
                              ),
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Image(
                          image: AssetImage("images/image4.png"),
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return StatefulBuilder(builder: (BuildContext
                                          context,
                                      void Function(void Function()) setState) {
                                    return Dialog(
                                      // clipBehavior: Clip.none,
                                      backgroundColor: Colors.white,
                                      insetPadding: EdgeInsets.all(12),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            // height: MediaQuery.of(context).size.height * 0.92,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 14.0,
                                                vertical: 10.0),
                                            width: double.infinity,
                                            // decoration: BoxDecoration(
                                            //   borderRadius: BorderRadius.circular(15.0),
                                            // ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 17.0,
                                                  ),
                                                  TextFormField(
                                                    controller: postController,
                                                    maxLines: 3,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
                                                      ),
                                                      hintText:
                                                          "What\'s happening",
                                                      hintStyle: TextStyle(
                                                          fontSize: 18.5),
                                                    ),
                                                  ),
                                                  _video != null
                                                      ?
                                                      // _videoPlayerController!.value.initialized
                                                      SizedBox(
                                                          height: 350,
                                                          width: double.infinity,

                                                          child:Chewie( controller: chewieController!,)

                                                        )
                                                      : Container(),
                                                  imageFile != null
                                                      ? Container(
                                                          height: 300,
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),

                                                            color: Colors
                                                                .grey.shade100,
                                                            // image: DecorationImage(
                                                            //   image: FileImage(imageFile!),
                                                            //   fit: BoxFit.fill,
                                                            // )
                                                          ),
                                                          child: Image.file(
                                                            imageFile!,
                                                            fit: BoxFit.cover,
                                                          ))
                                                      : Container(),
                                                  location.text !=""
                                                      ? Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color: kAppColor,
                                                          ),
                                                          height: 50,
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .location_on_outlined,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              Expanded(
                                                                  child: Text(
                                                                    location.text,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              )),
                                                            ],
                                                          ))
                                                      : Container(),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 8),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            InkWell(
                                                              onTap: () {
                                                                print(
                                                                    "vido link is $_video");
                                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LocationPicker()));
                                                              },
                                                              child: Image(
                                                                image: AssetImage(
                                                                    'images/color_pick.png'),
                                                                width: 23,
                                                                height: 23,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 6.0,
                                                            ),
                                                            Container(
                                                              // height: 30.0,
                                                              // width: MediaQuery.of(context).size.width * 0.235,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                vertical: 6,
                                                                horizontal: 6,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    height: 14,
                                                                    width: 14,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              50),
                                                                      image:
                                                                          DecorationImage(
                                                                        image: AssetImage(
                                                                            "images/eveyone.png"),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4.0,
                                                                  ),
                                                                  Text(
                                                                    'Everyone',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11.0,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 6.0,
                                                            ),
                                                            Container(
                                                              // height: 25.0,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                vertical: 5,
                                                                horizontal: 5,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Everyone',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            11.0,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 8.0,
                                                                  ),
                                                                  Container(
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                            0.5),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          height:
                                                                              7.0,
                                                                          width:
                                                                              10.0,
                                                                          color: Colors
                                                                              .grey
                                                                              .withOpacity(0.5),
                                                                          child:
                                                                              Image(
                                                                            image:
                                                                                AssetImage('images/arrow-up.png'),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              2.5,
                                                                        ),
                                                                        Container(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          height:
                                                                              7.0,
                                                                          width:
                                                                              10.0,
                                                                          color: Colors
                                                                              .grey
                                                                              .withOpacity(0.5),
                                                                          child:
                                                                              Image(
                                                                            image:
                                                                                AssetImage('images/arrow-down.png'),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '#',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            SizedBox(
                                                              width: 8.0,
                                                            ),
                                                            Text(
                                                              '@',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            SizedBox(
                                                              width: 8.0,
                                                            ),
                                                            CircleAvatar(
                                                              backgroundImage:
                                                                  AssetImage(
                                                                      'images/emoji.png'),
                                                              radius: 9.0,
                                                              backgroundColor:
                                                                  Colors.white,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Container(
                                                    height: 1.0,
                                                    width: double.infinity,
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Container(
                                                    // color: Colors.blue,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.35,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 6,
                                                            vertical: 8),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () async {
                                                                await getImageGallery();
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 135,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4,
                                                                        vertical:
                                                                            8),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      height:
                                                                          25,
                                                                      width: 25,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'images/gallery.png'),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          7.0,
                                                                    ),
                                                                    Text(
                                                                      'Upload Images',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () async {
                                                                await _pickVideo();
                                                                //getVideoGallery();
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 135,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4,
                                                                        vertical:
                                                                            8),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      height:
                                                                          25,
                                                                      width: 25,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'images/video.png'),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          8.0,
                                                                    ),
                                                                    Text(
                                                                      'Upload Video',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          'images/gif.png'),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 7.0,
                                                                  ),
                                                                  Text(
                                                                    'GIF',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          'images/voice.png'),
                                                                      color: Color.fromARGB(
                                                                              255,
                                                                              15,
                                                                              237,
                                                                              226)
                                                                          .withOpacity(
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 6.0,
                                                                  ),
                                                                  Text(
                                                                    'Upload Recording',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          'images/h-emoji.png'),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 7.0,
                                                                  ),
                                                                  Text(
                                                                    'Feelings',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          'images/upload-files.png'),
                                                                      color: Colors
                                                                          .purple,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 6.0,
                                                                  ),
                                                                  Text(
                                                                    'Upload Files',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: NetworkImage(
                                                                          'https://www.dreamhost.com/blog/wp-content/uploads/2019/06/afa314e6-1ae4-46c5-949e-c0a77f042e4f_DreamHost-howto-prod-descrips-full-750x500.jpeg'),
                                                                      color: Colors
                                                                          .orange,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 7.0,
                                                                  ),
                                                                  Text(
                                                                    'Sell Products',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          'images/chart.png'),
                                                                      color: Colors
                                                                          .black54,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 6.0,
                                                                  ),
                                                                  Text(
                                                                    'Create Roll',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () async {
                                                                await showPlacePicker();
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 135,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4,
                                                                        vertical:
                                                                            8),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      height:
                                                                          25,
                                                                      width: 25,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                      child:
                                                                          Image(
                                                                        image: AssetImage(
                                                                            'images/location-icon.png'),
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            151,
                                                                            106,
                                                                            89),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          7.0,
                                                                    ),
                                                                    Text(
                                                                      'Location',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 135,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4,
                                                                      vertical:
                                                                          8),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(5),
                                                                    height: 25,
                                                                    width: 25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    child:
                                                                        Image(
                                                                      image: AssetImage(
                                                                          'images/audio.png'),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 6.0,
                                                                  ),
                                                                  Text(
                                                                    'Audio Upload',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25.0,
                                                  ),
                                                  GestureDetector(
                                                    onTap: (){
                                                      print("click");
                                                      createPost();
                                                      setState(() {
                                                       // Navigator.pop(context);
                                                        postController.clear();
                                                        imageFile = null;
                                                        _video = null;
                                                        _videoPlayerController!.dispose();
                                                        location.text = "";
                                                      });

                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 50,
                                                        width: 140,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.orange,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: isLoad
                                                            ? CircularProgressIndicator()
                                                            : Text(
                                                                'Publish',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      18.0,
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 16,
                                            top: 15,
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(
                                                  () {
                                                    imageFile = null;
                                                    _video = null;
                                                    location.text = "";
                                                  },
                                                );
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(3),
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'images/reject.png'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                                });
                          },
                          child: Text(
                            "Whats's going on? #Hashtag.. Link..",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 9.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _showMyDialog1();
                            },
                            child:
                                // SvgPicture.asset(
                                //   picTabs[6],
                                //   height: 25,
                                //   width: 25,
                                //   color: Colors.grey.shade500,
                                // ),
                                SvgPicture.asset(
                              picTabs[7],
                              height: 33,
                              color: Colors.grey.shade500,
                              width: 30,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: width * 0.02,
                        // ),
                        Expanded(
                          child: Icon(
                            Icons.image,
                            size: 33.0,
                            color: Colors.grey,
                          ),
                        ),
                        // SizedBox(
                        //   width: width * 0.02,
                        // ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(CreateAdMobile());
                            },
                            child: Icon(
                              Icons.emoji_emotions,
                              size: 33.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.12,
                        ),
                        SizedBox(
                          width: width * 0.77,
                          height: height * 0.01,
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.1,
                        ),
                        SvgPicture.asset(
                          'assets/theater-masks.svg',
                          height: 25,
                          color: Color(0xffff9200),
                          width: 25,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Entertainment",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        Expanded(
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 30.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: height * 0.06,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            color: const Color(0xfff1f1f1),
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Your Feed",
                                style: TextStyle(
                                  color: Color(0xffafafaf),
                                  fontSize: 10.0,
                                ),
                              ),
                              Image(
                                image: AssetImage("images/onoff.png"),
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "All",
                                style: TextStyle(
                                  color: Color(0xffff9200),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: height * 0.06,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            color: Color(0xfff1f1f1),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Day",
                                style: TextStyle(
                                  color: Color(0xffafafaf),
                                  fontSize: 10.0,
                                ),
                              ),
                              Image(
                                image: AssetImage("images/onoff.png"),
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Night",
                                style: TextStyle(
                                  color: Color(0xffff9200),
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: 160,
                //width: width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TabBar(
                      controller: _tabController,
                      labelColor: Color(0xffFF9200),
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Color(0xffFF9200),
                      indicatorWeight: 2,
                      labelPadding: EdgeInsets.symmetric(vertical: 6),
                      labelStyle: TextStyle(fontSize: 14),
                      tabs: [
                        SvgPicture.asset(
                          picTabs[0],
                          color: Colors.grey.shade500,
                          height: 25,
                          width: 25,
                        ),
                        SvgPicture.asset(picTabs[1],
                            height: 25, color: Colors.grey.shade500, width: 25),
                        SvgPicture.asset(picTabs[2],
                            height: 25, color: Colors.grey.shade500, width: 25),
                        SvgPicture.asset(
                          picTabs[3],
                          height: 30,
                          color: Colors.grey.shade500,
                          width: 30,
                        ),
                        SvgPicture.asset(picTabs[4],
                            height: 25, color: Colors.grey.shade500, width: 25),
                        SvgPicture.asset(picTabs[5],
                            height: 25, color: Colors.grey.shade500, width: 25),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Center(
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.8,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                hintText: 'Search Here...',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                                suffixIcon: const Icon(
                                  Icons.search,
                                  color: Color(0xffff9200),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              FutureBuilder(
                  future: getHomeData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data != null || postData != null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          // scrollDirection: ax,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: postData.length, //photoList.length,
                          itemBuilder: (context, index) {
                           index !=12? showLocation = LatLng(
                               double.parse(postData[index]['lat_']),
                               double.parse(postData[index]['lng_'])):Container();

                            addres = postData[index]['postMap'].toString();

                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: height * 0.15,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: width * 0.05,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              //
                                              // print(
                                              //  "Dp is ==== ${ postData[index]['dp']}");

                                              // print(postData[index]['postFile']
                                              //     .split(".")
                                              //     .last);
                                            },
                                            child: Container(
                                              height: 65,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: index !=12?
                                                  NetworkImage(
                                                    postData[index]['publisher']
                                                        ['avatar'],
                                                  ): NetworkImage(
                                                      StaticInfo.imagesUrl+  postData[index]['dp']

                                                  ),
                                                  //   fit: BoxFit.fill
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.03,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: height * 0.03,
                                              ),
                                               index !=12?
                                              Text(
                                                postData[index]['publisher']
                                                    ['username'],
                                                style: TextStyle(
                                                  color: Color(0xff3b3b3b),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ):Text(
                                                 postData[index]['name'],
                                                 style: TextStyle(
                                                   color: Color(0xff3b3b3b),
                                                   fontSize: 14.0,
                                                   fontWeight: FontWeight.bold,
                                                 ),
                                               ),
                                              SizedBox(
                                                height: height * 0.005,
                                              ),
                                              Row(
                                                children: [
                                                  index !=12?
                                                  Text(
                                                    DateFormat('hh:mm a')
                                                        .format(DateTime
                                                            .fromMillisecondsSinceEpoch(
                                                                int.parse(
                                                                      postData[
                                                                              index]
                                                                          [
                                                                          'time'],
                                                                    ) *
                                                                    1000)
                                                    ),
                                                    style: TextStyle(
                                                      color:
                                                          Colors.grey.shade400,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ):Text(
                                                   "Sponsored",
                                                    style: TextStyle(
                                                      color: Color(0xff3b3b3b),
                                                      fontSize: 14.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.circle,
                                                    size: 12,
                                                    color: Colors.grey.shade400,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.005,
                                              ),
                                              index!=12?
                                              Text(
                                                "Change his profile picture",
                                                style: TextStyle(
                                                  color: Color(0xff3b3b3b),
                                                  fontSize: 11.0,
                                                ),
                                              ):Text(
                                               "Hii",
                                                style: TextStyle(
                                                  color: Color(0xff3b3b3b),
                                                  fontSize: 11.0,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                index!=12?
                                postData[index]['postText'] != ""
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: double.infinity,
                                            child: Column(
                                              children: [
                                                Text(
                                                  postData[index]['postText'],
                                                  style: (TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16)),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                postData[index]
                                                            ['postFile_full'] !=
                                                        ""
                                                    ? postData[index][
                                                                'postFileThumb'] !=
                                                            ""
                                                        ? Container(
                                                            color: Colors.transparent,
                                                            // height: 380.0,
                                                            child: Center(
                                                                child:
                                                                    VideoPlay(

                                                              pathh: postData[
                                                                      index][
                                                                  'postFile_full'],
                                                            )))

                                                        : Container(
                                                            height: 300.0,
                                                            child:
                                                                Image.network(
                                                              postData[index][
                                                                  'postFile_full'],
                                                              width: double
                                                                  .infinity,
                                                              height:
                                                                  height * 0.3,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          )
                                                    : Container(),


                                                // GestureDetector(
                                                //   onTap: (){
                                                //     if (controller.value.isPlaying) {
                                                //       controller.pause();
                                                //     } else {
                                                //
                                                //       controller.play();
                                                //     }
                                                //
                                                //     setState(() {
                                                //
                                                //     });
                                                //   },
                                                //   child: AspectRatio(
                                                //     aspectRatio: controller.value.aspectRatio,
                                                //     child: VideoPlayer(controller),
                                                //   ),
                                                // ),
                                              ],
                                            )),
                                      ):
                                     postData[index]['postMap'] != ""
                                        ?  GestureDetector(
                            onTap:(){
                          print("longitude and lat is == $showLocation");
                          print("adrees == $addres");
                            },
                              child:  Container(
                                            height: 300.0,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                            child: GoogleMap(
                                              zoomGesturesEnabled:false,
                                              initialCameraPosition:
                                                  CameraPosition(
                                                target: LatLng(
                                                    double.parse(postData[index]
                                                        ['lat_']),
                                                    double.parse(postData[index]
                                                        ['lng_'])),
                                                //showLocation,

                                                zoom:
                                                    15.151926040649414, //initial zoom level
                                              ),



                                              onMapCreated: (controller) =>
                                                  _googleMapController =
                                                      controller,
                                              markers:getmarkers(),
                                            ),
                                          )):



                                         (
                                             postData[index]['postFile_full'] !=
                                                "" ? postData[index]['postFile']
                                                            .split(".")
                                                            .last ==
                                                        "mp4"
                                                || postData[index]
                                                            ['postFileThumb'] !=
                                                        ""
                                                    ? Container(
                                                        color: Colors.transparent,
                                                        //kAppColor,
                                                        // height: 380.0,
                                                        child: Center(
                                                            child: VideoPlay(
                                                          pathh: postData[index]
                                                              ['postFile_full'],
                                                        )))
                                                    : Container(
                                                        height: 300.0,
                                                        child: Image.network(
                                                          postData[index]
                                                              ['postFile_full'],
                                                          width: width * 1.0,
                                                          height: height * 0.3,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      )

                                            : CarouselSlider(
                                                items: <Widget>[
                                                    Image.network(
                                                      postData[index]['product']
                                                              ['images'][0]
                                                          ['image'],
                                                      width: width * 1.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    // Image.network(
                                                    //   postData[index]['product']
                                                    //           ['images'][0]
                                                    //       ['image_org'],
                                                    //   width: width * 1.0,
                                                    //   fit: BoxFit.cover,
                                                    // ),
                                                  ],
                                                options: CarouselOptions(
                                                  height: 300.0,
                                                  enlargeCenterPage: true,
                                                  autoPlay: false,
                                                  aspectRatio: 1.2,
                                                  autoPlayCurve:
                                                      Curves.fastOutSlowIn,
                                                  enableInfiniteScroll: true,
                                                  autoPlayAnimationDuration:
                                                      Duration(
                                                          milliseconds: 800),
                                                  viewportFraction: 0.8,
                                                ))):Container(
                                    color: Colors.transparent,
                                    //kAppColor,
                                    // height: 380.0,
                                    child: Center(
                                        child: VideoPlay(
                                          pathh: postData[index]
                                          ['ad_media'],
                                        ))),
                                Container(
                                  height: height * 0.1,
                                  //width: width * 0.9,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Spacer(),
                                          Image.asset(
                                            'images/like1.png',
                                            fit: BoxFit.fill,
                                            // color: Colors.black,
                                            height: 30,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '  Like',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '  465',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            'images/comment1 (1).png',
                                            fit: BoxFit.fill,
                                            // color: Colors.black,
                                            height: 30,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              print("click");
                                              // if(postData[index]['all_comments'] .isNotEmpty ){
                                              //
                                              //   Fluttertoast.showToast(msg: '${postData[index]['all_comments'][0]['publisher']}');
                                              commentIndex = index;

                                              var comment = postData[index]
                                                      ['all_comments']
                                                  .isNotEmpty;
                                              Get.to(
                                                CommentsScreen(),
                                                arguments: [index, comment],
                                              );
                                              // }

                                              // Fluttertoast.showToast(msg: '${postData[index]['all_comments'] .isNotEmpty}');
                                              // Get.to(CommentsScreen());
                                            },
                                            child: Column(
                                              children: [
                                                Text(
                                                  '  Comment',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                index !=12?
                                                Text(
                                                  postData[index]
                                                      ['total_comments'],
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ):Text(
                                                  "0",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            'images/revibe1.png',
                                            fit: BoxFit.fill,
                                            // color: Colors.black,
                                            height: 30,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '  Revibed',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '  212',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            );
                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              SizedBox(
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Set<Marker> getmarkers() {
    //setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: addres.toString(),
          snippet: addres.toString(),
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
  //  });
   //setState(() {});

    return markers;
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close_sharp))
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Room activity',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Color(0xffFF9200),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 125.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Create New',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Color(0xffFF9200),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 135.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('David\'s Room ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 151.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Hanging Out',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Group 377.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Join Me! ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Group 379.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Here All Day',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Group 381.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Keep Me Company',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 165.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Trying Rooms',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Group 385.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Bored at Home ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Group 387.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Is This On?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 171.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('TGIF ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 173.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Grad Party',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 5),
                                CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: SvgPicture.asset(
                                        "images/Path 174.svg")),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text('Happy Hour ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showMyDialog1() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close_sharp))
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('images/Group 353.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Build Your Live Room',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showMyDialog();
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.grey.shade300,
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        'images/Path 135.png',
                                        height: 25,
                                      )),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Room activity',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black)),
                                      Text('David\'s Room',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey.shade400,
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
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
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showMyDialog3();
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.grey.shade300,
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        'images/Group 355.png',
                                        height: 25,
                                      )),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Invite friends',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black)),
                                      Text('Select peoples...',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.blue)),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey.shade400,
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
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
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          //CustomDialogBox();
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.grey.shade300,
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        'images/Path 137.png',
                                        height: 25,
                                      )),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Time started',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black)),
                                      Text('Now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey.shade400,
                                  ),
                                  SizedBox(width: 5),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text('To get started, select people to invite',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.orange.shade200,
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Text('Create Room',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 15),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showMyDialog3() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close_sharp))
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Who is invited?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          'images/Path 135.png',
                                          height: 25,
                                        )),
                                    SizedBox(height: 25),
                                  ],
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Friends',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black)),
                                    Text(
                                        'All your friends can \nsee and join this \nroom on Facebook.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.grey)),
                                  ],
                                ),
                                Spacer(),
                                Radio<SingingCharacter>(
                                  value: SingingCharacter.lafayette,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 3,
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          'images/Group 355.png',
                                          height: 25,
                                        )),
                                    SizedBox(height: 70),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Invite friends',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black)),
                                    Text(
                                        'Choose those friends \nwho can see and \njoin this room. \nIf you turn on \nlink sharing, alone \nwith the link will \nbe able to join \nas well.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.grey)),
                                  ],
                                ),
                                Spacer(),
                                Radio<SingingCharacter>(
                                  value: SingingCharacter.jefferson,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                                Spacer(),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.orange,
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              Text('Invite Friends',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 15),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        );
      },
    );
  }
}

// class CustomDialogBox extends StatelessWidget {
//   const CustomDialogBox({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class MenuItem {
  final String text;

  const MenuItem({
    required this.text,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [
    WhatsTranding,
    Buzzin,
    Explore,
    ShopCart,
  ];
  static const List<MenuItem> secondItems = [MyAds];

  static const WhatsTranding = MenuItem(
    text: 'Whats Trending',
  );
  static const Buzzin = MenuItem(
    text: 'Buzzin',
  );
  static const Explore = MenuItem(
    text: 'Explore',
  );
  static const ShopCart = MenuItem(
    text: 'Shop Cart',
  );
  static const MyAds = MenuItem(
    text: 'My Ads',
  );

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        // Icon(
        //     item.icon,
        //     color: Colors.white,
        //     size: 22
        // ),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.WhatsTranding:
        Get.to(EventPage());
        //Do something
        break;
      case MenuItems.Buzzin:
        //Do something
        break;
      case MenuItems.Explore:
        //Do something
        break;
      case MenuItems.ShopCart:
        //Do something
        break;
      case MenuItems.MyAds:
        Get.to(Campaigns());

        //Do something
        break;
    }
  }
}
