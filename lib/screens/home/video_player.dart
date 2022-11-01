import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../common/colors.dart';

class VideoPlay extends StatefulWidget {
  String? pathh;

  @override
  _VideoPlayState createState() => _VideoPlayState();

  VideoPlay({
    Key? key,
    this.pathh, // Video from assets folder
  }) : super(key: key);
}

class _VideoPlayState extends State<VideoPlay> {
  ValueNotifier<VideoPlayerValue?> currentPosition = ValueNotifier(null);
  VideoPlayerController? controller;
  late Future<void> futureController;

  initVideo() {
    controller = VideoPlayerController.network(widget.pathh!);

    futureController = controller!.initialize();
  }

  @override
  void initState() {
    initVideo();
    controller!.addListener(() {
      if (controller!.value.isInitialized) {
        currentPosition.value = controller!.value;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
  void soundToggle() {
    setState(() {
      isMusicOn == true
          ? controller!.setVolume(0.0)
          : controller!.setVolume(1.0);
      isMusicOn = !isMusicOn;
    });}
  bool isMusicOn = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureController,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          return SizedBox(
            height: 400,
            width: double.infinity,
            child: AspectRatio(
              
                aspectRatio:  controller!.value.aspectRatio,
                child: Stack(children: [
                  Positioned.fill(
                      child: Container(
                          foregroundDecoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(.7),
                                  Colors.transparent
                                ],
                                stops: [
                                  0,
                                  .3
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: VideoPlayer(controller!

                          ))),
                  Positioned.fill(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: GestureDetector(
                                  onDoubleTap: () async {
                                    Duration? position =
                                    await controller!.position;
                                    setState(() {
                                      controller!.seekTo(Duration(
                                          seconds: position!.inSeconds - 10));
                                    });
                                  },
                                  child: const Icon(
                                    Icons.fast_rewind_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: IconButton(
                                    icon: Icon(
                                      controller!.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (controller!.value.isPlaying) {
                                          controller!.pause();
                                        } else {
                                          controller!.play();
                                        }
                                      });
                                    },
                                  )),
                              Expanded(
                                flex: 3,
                                child: GestureDetector(
                                  onDoubleTap: () async {
                                    Duration? position =
                                    await controller!.position;
                                    setState(() {
                                      controller!.seekTo(Duration(
                                          seconds: position!.inSeconds + 10));
                                    });
                                  },
                                  child: const Icon(
                                    Icons.fast_forward_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Text(
                             controller!.value.position
                                 .toString()
                                 .substring(
                                 controller!.value.position
                                     .toString()
                                     .indexOf(':') +
                                     1,
                                 controller!.value.position
                                     .toString()
                                     .indexOf('.')),
                             style: const TextStyle(
                                 color: Colors.white,
                                 fontSize: 19),
                           ),
                             Text("/",style: const TextStyle(
                                 color: Colors.white,
                                 fontSize: 19),),
                             Expanded(

                               child: Text(
                                 controller!.value.duration
                                     .toString()
                                     .substring(
                                     controller!.value.duration
                                         .toString()
                                         .indexOf(':') +
                                         1,
                                     controller!.value.duration
                                         .toString()
                                         .indexOf('.')),
                                 style: const TextStyle(
                                     color: Colors.white,
                                     fontSize: 19),
                               ),
                             ),
                            InkWell(
                              onTap: (){
                                soundToggle();
                              },
                              child: Icon(
                                isMusicOn == true ? Icons.volume_up : Icons.volume_off,
                                color: Colors.white,
                              ),
                            )
                            // IconButton(
                            //     onPressed: () {
                            //       soundToggle();
                            //     },
                            //     icon: Icon(
                            //       isMusicOn == true ? Icons.volume_up : Icons.volume_off,
                            //       color: Colors.white,
                            //     )
                            // ),


                          ],
                        ),
                        ClipRRect(
                          //borderRadius: BorderRadius.circular(8),
                           child:   Container(
                              height: 13,
                              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                              //     color: Colors.red,
                              // ),
                              child: VideoProgressIndicator(controller!,


                                  allowScrubbing: true,
                                  colors: VideoProgressColors(
                                    backgroundColor: Colors.blueGrey,
                                    playedColor: kAppColor ,
                                    bufferedColor: Colors.white,
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        // Expanded(
                        //     flex: 2,
                        //     child: Align(
                        //       alignment: Alignment.bottomCenter,
                        //       child: ValueListenableBuilder(
                        //           valueListenable: currentPosition,
                        //           builder: (context,
                        //               VideoPlayerValue? videoPlayerValue, w) {
                        //             return Padding(
                        //               padding: const EdgeInsets.symmetric(
                        //                   horizontal: 20, vertical: 10),
                        //               child: Row(
                        //                 children: [
                        //                   Text(
                        //                     videoPlayerValue!.position
                        //                         .toString()
                        //                         .substring(
                        //                         videoPlayerValue.position
                        //                             .toString()
                        //                             .indexOf(':') +
                        //                             1,
                        //                         videoPlayerValue.position
                        //                             .toString()
                        //                             .indexOf('.')),
                        //                     style: const TextStyle(
                        //                         color: Colors.white,
                        //                         fontSize: 22),
                        //                   ),
                        //                   const Spacer(),
                        //                   Text(
                        //                     videoPlayerValue.duration
                        //                         .toString()
                        //                         .substring(
                        //                         videoPlayerValue.duration
                        //                             .toString()
                        //                             .indexOf(':') +
                        //                             1,
                        //                         videoPlayerValue.duration
                        //                             .toString()
                        //                             .indexOf('.')),
                        //                     style: const TextStyle(
                        //                         color: Colors.white,
                        //                         fontSize: 22),
                        //                   ),
                        //                 ],
                        //               ),
                        //             );
                        //           }),
                        //     ))
                      ],
                    ),
                  ),
                ])),
          );
        }
      },
    );
  }
}