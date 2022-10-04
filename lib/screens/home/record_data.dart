//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:audioplayers/audioplayers.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:deixa/data/model/FirebaseUser.dart';
// import 'package:deixa/data/repository/remote/miscellenous/miscellenous_repo_impl.dart';
// import 'package:deixa/helpers/locator.dart';
// import 'package:deixa/presentation/screens/chats/chat_viewmodel.dart';
// import 'package:deixa/presentation/shared_widgets/chat_bubbles.dart';
// import 'package:deixa/presentation/shared_widgets/chat_date_wid.dart';
// import 'package:deixa/presentation/shared_widgets/k_header.dart';
// import 'package:deixa/routing/app_router.gr.dart';
// import 'package:deixa/utils/call_functions.dart';
// import 'package:deixa/utils/crop_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive/hive.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:deixa/presentation/shared_widgets/cust_button.dart';
// import 'package:ntp/ntp.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:record_mp3/record_mp3.dart';
// import 'package:swipe_to/swipe_to.dart';
// import 'package:deixa/presentation/res/colors.dart';
// import 'package:deixa/helpers/debug_report.dart';
// import 'package:deixa/data/constant/strings.dart';
// import 'package:deixa/presentation/shared_widgets/cust_prog_ind.dart';
// import 'package:deixa/presentation/shared_widgets/cust_text_field.dart';
// import '../../../data/repository/remote/userSql/user_sql_repo_impl.dart';
// import '../../shared_widgets/back_button.dart';
// import 'package:path_provider/path_provider.dart';
// import 'chat_detail_screen.dart';
// import 'chat_user_detail.dart';
//
// class ChatChannelScreen extends ConsumerStatefulWidget {
//   Map data;
//   bool singleChat;
//   bool isGroupChat;
//   FirebaseUser? opponentUser;
//   InBox? inbox;
//
//   ChatChannelScreen(
//       {required this.data,
//         this.singleChat = false,
//         this.inbox,
//         this.opponentUser,
//         this.isGroupChat = false});
//
//   @override
//   ConsumerState<ChatChannelScreen> createState() => _ChatChannelScreenState();
// }
//
// class _ChatChannelScreenState extends ConsumerState<ChatChannelScreen> {
//   final ImagePicker _picker = ImagePicker();
//   CroppedFile? _finisedImageFile;
//   FirebaseUser me = FirebaseUser();
//   TextEditingController _msgCtrl = TextEditingController();
//   List messages = [];
//   ScrollController scrollController = ScrollController();
//   AudioPlayer audioPlayer = AudioPlayer();
//
//   bool _isReplying = false;
//   bool _isRecording = false;
//   bool _recordingText = false;
//   String statusText = "";
//   bool playAudioMsg = false;
//   bool isComplete = false;
//   String replyMessageName = '';
//   String replyMessage = '';
//   String replyMediaUrl = '';
//   bool isImage = false;
//   bool isAudio = false;
//   String audioFileUrl = '';
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.singleChat) {
//       readOneOnOneMessages();
//     }
//   }
//
//   late ChatViewModel _viewModel;
//   InBox inbox = InBox();
//
//   @override
//   Widget build(BuildContext context) {
//     _viewModel = ref.watch(chatViewModel);
//
//     Debug.showPage("Chat Channel Screen", "/src/lib/pages/chat_channel_screen");
//     Size med = MediaQuery.of(context).size;
//     String _userId = _viewModel.userId;
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Alpha',
//                 style: TextStyle(fontSize: 16),
//               ),
//               Row(
//                 children: [
//                   CommonBackButton(),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     widget.data['name'],
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//               widget.singleChat == false
//                   ? Expanded(
//                 child: StatefulBuilder(builder: (context, fun) {
//                   return StreamBuilder<QuerySnapshot>(
//                       stream: _viewModel
//                           .getChannelMessages(widget.data['id']),
//                       builder: (context, snapshot) {
//                         if (!snapshot.hasData) {
//                           return Container(
//                               height: med.height * 0.8,
//                               child: CustProgIndicator());
//                         } else {
//                           List<QueryDocumentSnapshot?> _dts =
//                               snapshot.data!.docs;
//                           Future.delayed(Duration(milliseconds: 100), () {
//                             // scrollController.animateTo(scrollController., duration: duration, curve: curve)
//                             scrollController.animateTo(
//                               scrollController.position.maxScrollExtent,
//                               duration: Duration(milliseconds: 1),
//                               curve: Curves.fastOutSlowIn,
//                             );
//                           });
//
//                           print('channel msg _dts $_dts');
//
//                           // String _timeStamp = DateFormat("hh:mm dd-MM-yyyy")
//                           //     .format(DateTime.fromMillisecondsSinceEpoch(
//                           //   widget.data['timeStamp'] * 1000,
//                           // ));
//                           return Container(
//                             child: SingleChildScrollView(
//                               controller: scrollController,
//                               child: Column(
//                                 children: [
//                                   // Padding(
//                                   //   padding: const EdgeInsets.symmetric(vertical: 10),
//                                   //   child: Center(
//                                   //     child: Text(
//                                   //       _timeStamp,
//                                   //       style: TextStyle(
//                                   //         color: Theme.of(context)
//                                   //             .textTheme
//                                   //             .bodyText1!
//                                   //             .color!
//                                   //             .withOpacity(0.5),
//                                   //       ),
//                                   //     ),
//                                   //   ),
//                                   // ),
//                                   ListView.builder(
//                                     shrinkWrap: true,
//                                     itemCount: _dts.length,
//                                     reverse: true,
//                                     // padding: EdgeInsets.only(bottom: 100),
//                                     physics:
//                                     NeverScrollableScrollPhysics(),
//                                     itemBuilder: (_, int index) {
//                                       String senderName =
//                                       _dts[index]!['senderName'];
//
//                                       bool isSend =
//                                       _dts[index]!['senderId'] ==
//                                           _userId
//                                           ? true
//                                           : false;
//                                       return
//                                         //  Text('data');
//
//                                         Column(
//                                           children: [
//                                             index == _dts.length - 1
//                                                 ? DateWid(
//                                               date: DateFormat(
//                                                   "yMMMMEEEEd")
//                                                   .format(DateTime
//                                                   .fromMillisecondsSinceEpoch(
//                                                   _dts[index]![
//                                                   'timeStamp']))
//                                                   .toString(),
//                                             )
//                                                 : _dts.length > 1 &&
//                                                 index + 1 !=
//                                                     _dts.length &&
//                                                 DateFormat("dd-MM-yyyy").format(
//                                                     DateTime.fromMillisecondsSinceEpoch(
//                                                         _dts[index]![
//                                                         'timeStamp'])) !=
//                                                     DateFormat(
//                                                         "dd-MM-yyyy")
//                                                         .format(DateTime.fromMillisecondsSinceEpoch(
//                                                         _dts[index +
//                                                             1]!['timeStamp']))
//                                                 ? DateWid(
//                                               date: DateFormat(
//                                                   "yMMMMEEEEd")
//                                                   .format(DateTime
//                                                   .fromMillisecondsSinceEpoch(
//                                                   _dts[index]![
//                                                   'timeStamp']))
//                                                   .toString(),
//                                             )
//                                                 : Container(),
//                                             Row(
//                                               children: [
//                                                 isSend
//                                                     ? SizedBox.shrink()
//                                                     : InkWell(
//                                                   onTap: isSend
//                                                       ? null
//                                                       : () => showUserModal(
//                                                       _dts[
//                                                       index]!),
//                                                   child: CircleAvatar(
//                                                     backgroundImage:
//                                                     CachedNetworkImageProvider(
//                                                         _dts[index]![
//                                                         'avatar']),
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   child: SwipeTo(
//                                                     onRightSwipe:
//                                                     // isSend
//                                                     //     ? null
//                                                     //     :
//                                                         () async {
//                                                       _isReplying = true;
//                                                       replyMessageName =
//                                                       senderName
//                                                           .capitalize()!;
//                                                       replyMessage =
//                                                       _dts[index]![
//                                                       'message']!;
//                                                       print(_dts[index]![
//                                                       'isImage']);
//                                                       isImage =
//                                                       _dts[index]![
//                                                       'isImage'];
//                                                       if (isImage) {
//                                                         print('heyyyy');
//                                                         replyMediaUrl =
//                                                         _dts[index]![
//                                                         'imageUrl']!;
//                                                       } else {
//                                                         if (_dts[index]![
//                                                         'audioUrl']! !=
//                                                             '') {
//                                                           replyMediaUrl =
//                                                           _dts[index]![
//                                                           'audioUrl']!;
//                                                           isAudio = true;
//                                                         } else {
//                                                           isAudio = false;
//                                                         }
//                                                       }
//                                                       setState(() {});
//                                                       fun(() {});
//                                                     },
//                                                     // onLeftSwipe: !isSend
//                                                     //     ? null
//                                                     //     : () async {
//                                                     //         _isReplying =
//                                                     //             true;
//                                                     //         replyMessageName =
//                                                     //             senderName
//                                                     //                 .capitalize()!;
//                                                     //         replyMessage = _dts[
//                                                     //                 index]![
//                                                     //             'message']!;
//                                                     //         isImage = _dts[
//                                                     //                 index]![
//                                                     //             'isImage'];
//                                                     //         if (isImage) {
//                                                     //           replyMediaUrl =
//                                                     //               _dts[index]![
//                                                     //                   'imageUrl']!;
//                                                     //         } else {
//                                                     //           if (_dts[index]![
//                                                     //                   'audioUrl']! !=
//                                                     //               '') {
//                                                     //             replyMediaUrl =
//                                                     //                 _dts[index]![
//                                                     //                     'audioUrl']!;
//                                                     //             isAudio =
//                                                     //                 true;
//                                                     //           } else {
//                                                     //             isAudio =
//                                                     //                 false;
//                                                     //           }
//                                                     //         }
//                                                     //         setState(() {});
//                                                     //         fun(() {});
//                                                     //       },
//                                                     child: ChatBubs(
//                                                       isImage: _dts[index]![
//                                                       'isImage'],
//                                                       audioUrl:
//                                                       _dts[index]![
//                                                       'audioUrl'],
//                                                       isReply: _dts[index]![
//                                                       'isReply'],
//                                                       isAudioReply: _dts[
//                                                       index]![
//                                                       'isReplyAudio'],
//                                                       replyMediaUrl: _dts[
//                                                       index]![
//                                                       'replyMessageMediaUrl'],
//                                                       isSend: isSend,
//                                                       replyMessage:
//                                                       _dts[index]![
//                                                       'replyMsg'],
//                                                       replyMessageUserName:
//                                                       _dts[index]![
//                                                       'replyMsgUserName'],
//                                                       msg: !_dts[index]![
//                                                       'isImage']
//                                                           ? _dts[index]![
//                                                       'message']
//                                                           : null,
//                                                       image: !_dts[index]![
//                                                       'isImage']
//                                                           ? null
//                                                           : _dts[index]![
//                                                       'imageUrl'],
//                                                       time: _dts[index]![
//                                                       'timeStamp'],
//                                                       isChannel: true,
//                                                       senderName: senderName
//                                                           .capitalize(),
//                                                       onTap: _dts[index]![
//                                                       'isImage'] ==
//                                                           0
//                                                           ? null
//                                                           : () => popImage(
//                                                           _dts[index]![
//                                                           'imageUrl']),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 // isSend
//                                                 //     ? InkWell(
//                                                 //         onTap: isSend
//                                                 //             ? null
//                                                 //             : () => _viewModel
//                                                 //                 .navigateToChatUserDetail(
//                                                 //                     _dts[index]!
//                                                 //                         .data()!),
//                                                 //         child: CircleAvatar(
//                                                 //           backgroundImage:
//                                                 //               CachedNetworkImageProvider(
//                                                 //                   _dts[index]![
//                                                 //                       'avatar']),
//                                                 //         ),
//                                                 //       )
//                                                 //     : SizedBox.shrink(),
//                                               ],
//                                             ),
//                                           ],
//                                         );
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         }
//                       });
//                 }),
//               )
//                   : Expanded(
//                 child: SingleChildScrollView(
//                   controller: scrollController,
//                   child: Column(
//                     children: [
//                       ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: messages.length,
//                         reverse: true,
//                         // padding: EdgeInsets.only(bottom: 100),
//                         physics: NeverScrollableScrollPhysics(),
//                         itemBuilder: (_, int index) {
//                           String senderName =
//                           messages[index]['senderName'];
//
//                           bool isSend =
//                           messages[index]['senderId'] == _userId
//                               ? true
//                               : false;
//                           return Column(
//                             children: [
//                               index == messages.length - 1
//                                   ? DateWid(
//                                 date: DateFormat("yMMMMEEEEd")
//                                     .format(DateTime
//                                     .fromMillisecondsSinceEpoch(
//                                     messages[index]
//                                     ['timeStamp']))
//                                     .toString(),
//                               )
//                                   : messages.length > 1 &&
//                                   index + 1 != messages.length &&
//                                   DateFormat("dd-MM-yyyy").format(
//                                       DateTime.fromMillisecondsSinceEpoch(
//                                           messages[index][
//                                           'timeStamp'])) !=
//                                       DateFormat("dd-MM-yyyy")
//                                           .format(DateTime
//                                           .fromMillisecondsSinceEpoch(
//                                           messages[index +
//                                               1][
//                                           'timeStamp']))
//                                   ? DateWid(
//                                 date: DateFormat("yMMMMEEEEd")
//                                     .format(DateTime
//                                     .fromMillisecondsSinceEpoch(
//                                     messages[index]
//                                     ['timeStamp']))
//                                     .toString(),
//                               )
//                                   : Container(),
//                               // Text('${messages[index]}')
//                               Row(
//                                 children: [
//                                   isSend
//                                       ? SizedBox.shrink()
//                                       : InkWell(
//                                     // onTap: isSend
//                                     //     ? null
//                                     //     : () => showUserModal(
//                                     //         messages[index]),
//                                     child: CircleAvatar(
//                                       backgroundImage:
//                                       CachedNetworkImageProvider(
//                                           messages[index]
//                                           ['avatar']),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: SwipeTo(
//                                       // onRightSwipe: isSend
//                                       //     ? null
//                                       //     : () async {
//                                       //         replyMessageName =
//                                       //             senderName
//                                       //                 .capitalize()!;
//                                       //         replyMessage =
//                                       //             messages[index]
//                                       //                 ['message']!;
//                                       //         _isReplying = true;
//                                       //         isImage = messages[index]
//                                       //             ['IsImage'];
//                                       //         if (isImage) {
//                                       //           replyMediaUrl =
//                                       //               messages[index]
//                                       //                   ['imageUrl']!;
//                                       //         } else {
//                                       //           if (messages[index]
//                                       //                   ['audioUrl']! !=
//                                       //               '') {
//                                       //             replyMediaUrl =
//                                       //                 messages[index]
//                                       //                     ['audioUrl']!;
//                                       //             isAudio = true;
//                                       //           } else {
//                                       //             isAudio = false;
//                                       //           }
//                                       //         }
//                                       //         setState(() {});
//                                       //       },
//                                       onRightSwipe:
//                                       // !isSend
//                                       //     ? null
//                                       //     :
//                                           () async {
//                                         replyMessageName =
//                                         senderName.capitalize()!;
//                                         replyMessage =
//                                         messages[index]['message']!;
//                                         isImage =
//                                         messages[index]['IsImage'];
//                                         if (isImage) {
//                                           replyMediaUrl = messages[index]
//                                           ['imageUrl']!;
//                                         } else {
//                                           if (messages[index]
//                                           ['audioUrl']! !=
//                                               '') {
//                                             replyMediaUrl =
//                                             messages[index]
//                                             ['audioUrl']!;
//                                             isAudio = true;
//                                           } else {
//                                             isAudio = false;
//                                           }
//                                         }
//                                         _isReplying = true;
//                                         setState(() {});
//                                       },
//                                       child: ChatBubs(
//                                         isImage: messages[index]
//                                         ['IsImage'],
//                                         audioUrl: messages[index]
//                                         ['audioUrl'],
//                                         isReply: messages[index]
//                                         ['isReply'],
//                                         isAudioReply: messages[index]
//                                         ['isReplyAudio'],
//                                         replyMediaUrl: messages[index]
//                                         ['replyMessageMediaUrl'],
//                                         isSend: isSend,
//                                         replyMessage: messages[index]
//                                         ['replyMsg'],
//                                         replyMessageUserName:
//                                         messages[index]
//                                         ['replyMsgUserName'],
//                                         msg: !messages[index]['IsImage']!
//                                             ? messages[index]['message']!
//                                             : null,
//                                         image: !messages[index]['IsImage']
//                                             ? null
//                                             : messages[index]
//                                         ['imageUrl']!,
//                                         time: messages[index]
//                                         ['timeStamp']!,
//                                         isChannel: true,
//                                         senderName:
//                                         senderName.capitalize(),
//                                         onTap: messages[index]['IsImage']
//                                             ? null
//                                             : () => popImage(
//                                             messages[index]
//                                             ['imageUrl']!),
//                                       ),
//                                     ),
//                                   ),
//                                   // isSend
//                                   //     ? InkWell(
//                                   //         onTap: isSend
//                                   //             ? null
//                                   //             : () => _viewModel
//                                   //                 .navigateToChatUserDetail(
//                                   //                     messages[index]
//                                   //                         .data()!),
//                                   //         child: CircleAvatar(
//                                   //           backgroundImage:
//                                   //               CachedNetworkImageProvider(
//                                   //                   messages[index]
//                                   //                       ['senderAvatar']),
//                                   //         ),
//                                   //       )
//                                   //     : SizedBox.shrink(),
//                                 ],
//                               ),
//                             ],
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // : Container(),
//               SizedBox(
//                 height: 10,
//               ),
//               _isReplying
//                   ? Container(
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: kGrey, borderRadius: BorderRadius.circular(5)),
//                 child: Row(
//                   children: [
//                     Container(
//                       color: kNavColor,
//                       width: 5,
//                       height: 50,
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                         child: Column(
//                           crossAxisAlignment: isImage
//                               ? CrossAxisAlignment.center
//                               : CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     replyMessageName,
//                                     style: const TextStyle(
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   child: const Icon(Icons.close, size: 19),
//                                   onTap: () {
//                                     setState(() {
//                                       _isReplying = false;
//                                     });
//                                   },
//                                 )
//                               ],
//                             ),
//                             const SizedBox(height: 5),
//                             isImage
//                                 ? Container(
//                               height: 100,
//                               width: 100,
//                               child: CachedNetworkImage(
//                                 imageUrl: replyMediaUrl,
//                                 fit: BoxFit.cover,
//                               ),
//                             )
//                                 : isAudio
//                                 ? Container(
//                               height: 50,
//                               decoration: BoxDecoration(
//                                   color: kDialogsColor,
//                                   borderRadius:
//                                   BorderRadius.circular(5)),
//                               child: Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.center,
//                                 children: const [
//                                   Icon(Icons.mic_rounded, size: 25),
//                                   SizedBox(
//                                     width: 2,
//                                   ),
//                                   Text(
//                                     'Voice Message',
//                                     style: TextStyle(fontSize: 12),
//                                   )
//                                 ],
//                               ),
//                             )
//                                 : Text(replyMessage,
//                                 style: const TextStyle(fontSize: 12)),
//                           ],
//                         )),
//                   ],
//                 ),
//               )
//                   : Container(),
//               CustTextField(
//                 controller: _msgCtrl,
//                 suffixIcon: Container(
//                   width: 120,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       GestureDetector(
//                           onLongPressEnd: (LongPressEndDetailsd) {
//                             setState(() {
//                               _isRecording = true;
//                               _recordingText = false;
//                             });
//                             stopRecord();
//                           },
//                           onLongPress: () {
//                             startRecord();
//                             setState(() {
//                               _recordingText = true;
//                             });
//                           },
//                           child: Icon(Icons.mic)),
//                       IconButton(
//                         onPressed: () {
//                           showModalBottomSheet(
//                             context: context,
//                             builder: ((builder) => bottomSheet()),
//                           );
//                         },
//                         splashColor: kTransparent,
//                         icon: Icon(
//                           Icons.image,
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () => _postMessage(),
//                         icon: Icon(
//                           Icons.send,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               _isRecording
//                   ? SizedBox(
//                 height: 10,
//               )
//                   : Container(),
//               _isRecording ? _buildRecordingView() : Container(),
//               _recordingText ? _onRecordingText() : Container(),
//               SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   readOneOnOneMessages() async {
//     if (me.uid == null) {
//       await getMe();
//     }
//     print(widget.inbox);
//     if (widget.inbox == null) {
//       inbox.id = await getChatId(widget.opponentUser!, me, false);
//     } else {
//       inbox = widget.inbox!;
//     }
//     setState(() {});
//     print('===============');
//     print(inbox.id);
//     FirebaseFirestore.instance
//         .collection("oneOnOneMessages")
//         .where('chatId', isEqualTo: inbox.id)
//         .snapshots()
//         .listen((event) {
//       print('calling ??');
//       messages.clear();
//       for (int i = 0; i < event.docs.length; i++) {
//         messages.add(event.docs[i].data());
//       }
//       messages.sort((a, b) => int.parse(b[TIMESTAMP].toString())
//           .compareTo(int.parse(a[TIMESTAMP].toString())));
//       setState(() {});
//       Future.delayed(Duration(milliseconds: 100), () {
//         scrollController.animateTo(
//           scrollController.position.maxScrollExtent,
//           duration: Duration(milliseconds: 1),
//           curve: Curves.fastOutSlowIn,
//         );
//       });
//     });
//   }
//
//   showUserModal(QueryDocumentSnapshot userDt) {
//     String name = userDt['senderName'];
//     String avatar = userDt['avatar'];
//     CallFunctions.showModalBar(
//         context,
//         Container(
//           height: 210,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: 140,
//                     // color: red,
//                   ),
//                   Container(
//                     height: 80,
//                     color: accentColor,
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     left: 10,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         CircleAvatar(
//                           radius: 40,
//                           backgroundColor: kWhite,
//                           child: CircleAvatar(
//                             radius: 38,
//                             backgroundImage: CachedNetworkImageProvider(avatar),
//                           ),
//                         ),
//                         Text(
//                           name.capitalize()!,
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               // SizedBox(height: 20),
//               // CustButton(
//               //   onTap: () {
//               //     // print(userDt.data());
//               //     // FirebaseUser firebaseUser = FirebaseUser();
//               //     // Navigator.push(
//               //     //     context,
//               //     //     MaterialPageRoute(
//               //     //         builder: (_) => ChatChannelScreen(
//               //     //           data: {'name': users[index].firstName.toString()},
//               //     //           opponentUser: users[index],
//               //     //           singleChat: true,
//               //     //         )));
//               //     // locator<AppRouter>()
//               //     //     .push(ChatDetailRoute(data: userDt.data() as Map));
//               //   },
//               //   title: 'Message',
//               //   isHollow: true,
//               // ),
//             ],
//           ),
//         ));
//   }
//
//   popImage(image) {
//     CallFunctions.showModalBar(
//       context,
//       Image.network(image),
//     );
//   }
//
//   bottomSheet() {
//     return Container(
//       height: 100.0,
//       width: MediaQuery.of(context).size.width,
//       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       child: Column(
//         children: [
//           Text(
//             "Chose photo",
//             style: TextStyle(fontSize: 14),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FlatButton.icon(
//                   onPressed: () {
//                     _pickImage(ImageSource.camera);
//                     // Navigator.pop(context);
//                   },
//                   icon: Icon(Icons.camera),
//                   label: Text("Camera")),
//               FlatButton.icon(
//                   onPressed: () {
//                     _pickImage(ImageSource.gallery);
//                   },
//                   icon: Icon(Icons.image),
//                   label: Text("Gallery")),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   //? Pick Image
//   Future<CroppedFile?> _pickImage(ImageSource imageSource) async {
//     File? _imageFile;
//     final pickedImage = await _picker.pickImage(source: imageSource);
//     _imageFile = pickedImage != null ? File(pickedImage.path) : null;
//     if (_imageFile == null) return null;
//     File? file = await cropImage(_imageFile);
//     _finisedImageFile = CroppedFile(file!.path);
//     Navigator.pop(context);
//     _postMessage();
//     setState(() {});
//     return _finisedImageFile;
//   }
//
//   _postMessage() async {
//     if (_msgCtrl.text.trim().isNotEmpty ||
//         _finisedImageFile != null ||
//         recordFilePath.isNotEmpty) {
//       // try {
//       // print('data');
//       // print('widget.data  ${widget.data}');
//
//       String _userId = _viewModel.userId;
//       String _senderName = MiscRepoImpl().getUser(FIRST_NAME);
//       String _avatar = MiscRepoImpl().getUser(PROFILEPIC);
//
//       DateTime ntpNow = await NTP.now();
//
//       int timeStamp = ntpNow.millisecondsSinceEpoch;
//       // inbox and opponent null means this this is a group chat and the is no trace of users from previous screen.
//       Map data;
//       if (widget.inbox == null && widget.opponentUser == null) {
//         // this is the data for channel message
//         data = {
//           'id': widget.data['id'],
//           "senderId": _userId,
//           "senderName": _senderName,
//           "avatar": _avatar,
//           "message": _msgCtrl.text.trim(),
//           "isImage": _finisedImageFile == null ? false : true,
//           "imageUrl": null,
//           "timeStamp": timeStamp,
//         };
//       } else {
//         // this is the data for one on one chat
//         if (widget.inbox == null) {
//           widget.inbox = InBox();
//         }
//         if (me.uid == null) {
//           await getMe();
//         }
//         print('Hi');
//         if (!widget.isGroupChat) {
//           print('called');
//           widget.inbox!.id = await getChatId(widget.opponentUser!, me, false);
//         }
//         //we will get chat id here because wee need to save it in the message as well
//         data = {
//           'id': DateTime.now().millisecondsSinceEpoch.toString(),
//           "senderId": _userId,
//           "senderName": _senderName,
//           "receiverId": widget.opponentUser?.uid ?? '',
//           "chatId": widget.inbox!.id,
//           "avatar": _avatar,
//           "message": _msgCtrl.text.trim(),
//           "isImage": _finisedImageFile == null ? false : true,
//           "imageUrl": null,
//           "timeStamp": timeStamp,
//         };
//       }
//
//       if (_finisedImageFile == null && recordFilePath.isEmpty) {
//         data['replyMsg'] = replyMessage;
//         data['replyMsgUserName'] = replyMessageName;
//         data['replyMessageMediaUrl'] = replyMediaUrl;
//         data['isReplyAudio'] = isAudio;
//         data['isReply'] = _isReplying;
//         if (widget.singleChat) {
//           await postOneOnOneMessage(data);
//         } else {
//           await _viewModel.postChannelMessage(data);
//         }
//       } else if (recordFilePath.isNotEmpty) {
//         print('audio upload');
//
//         String imgName = APP_NAME + '_' + randomString(8) + '.mp3';
//
//         Map dt = {
//           'imgPath': recordFilePath,
//           'imgName': imgName,
//         };
//         print('imgName $imgName');
//         print('dt $dt');
//
//         data['audioUrl'] = CHATS + '/' + imgName; //url from mysql
//         var value = await _viewModel.uploadChatImage(dt);
//         if (value) {
//           print('dt $dt');
//           print('data $data');
//
//           data['replyMsg'] = replyMessage;
//           data['replyMsgUserName'] = replyMessageName;
//           data['replyMessageMediaUrl'] = replyMediaUrl;
//           data['isReplyAudio'] = isAudio;
//           data['isReply'] = _isReplying;
//           if (widget.singleChat) {
//             await postOneOnOneMessage(data);
//           } else {
//             await _viewModel.postChannelMessage(data);
//           }
//           recordFilePath = '';
//           _isRecording = false;
//           setState(() {});
//         }
//       } else {
//         print('image upload');
//
//         String imgName = APP_NAME + '_' + randomString(8) + '.jpg';
//
//         Map dt = {
//           'imgPath': _finisedImageFile!.path,
//           'imgName': imgName,
//         };
//         print('imgName $imgName');
//         print('dt $dt');
//
//         data['imageUrl'] = CHATS + '/' + imgName; //image url from mysql
//         var value = await _viewModel.uploadChatImage(dt);
//         if (value) {
//           print('dt $dt');
//           print('data $data');
//           data['replyMsg'] = replyMessage;
//           data['replyMsgUserName'] = replyMessageName;
//           data['replyMessageMediaUrl'] = replyMediaUrl;
//           data['isReplyAudio'] = isAudio;
//           data['isReply'] = _isReplying;
//           if (widget.singleChat) {
//             await postOneOnOneMessage(data);
//           } else {
//             await _viewModel.postChannelMessage(data);
//           }
//           _finisedImageFile = null;
//         }
//       }
//
//       if (widget.singleChat == true) {
//         print('data $data');
//         await updateInbox(data);
//       }
//       //Post Message
//       // await _allBackEnds.postMessage(data);
//       _msgCtrl.clear();
//       _isReplying = false;
//       isAudio = false;
//       setState(() {});
//       await Future.delayed(Duration(milliseconds: 100), () {
//         // scrollController.animateTo(scrollController., duration: duration, curve: curve)
//         scrollController.animateTo(
//           scrollController.position.maxScrollExtent,
//           duration: Duration(milliseconds: 1),
//           curve: Curves.fastOutSlowIn,
//         );
//       });
//       // } catch (e) {
//       //   print(e);
//       // }
//     }
//   }
//
//   Future<void> updateInbox(Map map) async {
//     if (widget.inbox == null) {
//       widget.inbox = InBox();
//       if (me.uid == null) {
//         await getMe();
//       }
//       widget.inbox!.lastMessage = map['isImage']
//           ? 'Image'
//           : map.containsKey('audioUrl')
//           ? 'Audio'
//           : map['message'];
//       widget.inbox!.user1 = me.uid;
//       widget.inbox!.user2 = widget.opponentUser?.uid ?? '';
//       widget.inbox!.lastMessageTimeStamp = map['timeStamp'].toString();
//     } else {
//       widget.inbox!.lastMessage = map['isImage']
//           ? 'Image'
//           : map.containsKey('audioUrl')
//           ? 'Audio'
//           : map['message'];
//       widget.inbox!.user1 = me.uid;
//       widget.inbox!.user2 = widget.opponentUser?.uid ?? '';
//       widget.inbox!.lastMessageTimeStamp = map['timeStamp'].toString();
//     }
//     await FirebaseFirestore.instance
//         .collection("inbox")
//         .doc(widget.inbox!.id)
//         .set(widget.inbox!.toMap());
//   }
//
//   getMe() async {
//     print('============');
//     var userBox = Hive.box(USERS);
//     await FirebaseFirestore.instance
//         .collection("users")
//         .doc(userBox.get('getcurrentUser')['uid'])
//         .get()
//         .then((value) {
//       print('-----------');
//       // print(value.data());
//       me = FirebaseUser.fromJson(value.data()!);
//       print(me.timeStamp);
//     });
//     print("all good");
//     // return me;
//   }
//
//   postOneOnOneMessage(Map data) {
//     print('---- data --');
//     print(data);
//     print('------');
//     String url = dotenv.env['ENDPOINT_URL']!;
//     String senderId = data['senderId'];
//     String receiverId = data['receiverId'] ?? "";
//     // String receiverId = data['']??"";
//     String chatId = data['chatId'] ?? "";
//     //   "receiverId": widget.opponentUser!.uid,
//     //             "chatId": widget.inbox!.id,
//     var imageUrl = data['imageUrl'] ?? '';
//     String message = data['message'] ?? '';
//     bool? isImage = data['isImage'] ?? false;
//     int time = data['timeStamp'];
//     String senderName = data['senderName'] ?? '';
//     String avatar = data['avatar'] ?? '';
//     String receiverName = data['receiverName'] ?? '';
//
// // Store Message
//     FirebaseFirestore.instance
//         .collection('oneOnOneMessages')
//         .doc(time.toString())
//         .set({
//       'senderId': senderId,
//       'receiverId': receiverId,
//       'chatId': chatId,
//       MESSAGE: message,
//       IMAGE_URL: imageUrl == null ? null : url + imageUrl,
//       TIMESTAMP: time,
//       IS_IMAGE: isImage ?? '',
//       "senderName": senderName,
//       "receiverName": receiverName,
//       "avatar": avatar,
//       "replyMsg": replyMessage,
//       "replyMsgUserName": replyMessageName,
//       "replyMessageMediaUrl": replyMediaUrl,
//       "isReplyAudio": isAudio,
//       "isReply": _isReplying,
//       "audioUrl": data['audioUrl'] == null ? '' : url + data['audioUrl']
//     }).timeout(
//       Duration(
//         seconds: 45,
//       ),
//     );
//   }
//
//   Widget _onRecordingText() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: kDialogsColor,
//           borderRadius: BorderRadius.circular(5),
//         ),
//         child: Center(
//           child: Text(
//             "Recoding Audio.....",
//             style: TextStyle(
//               fontSize: 15.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildRecordingView() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: kDialogsColor,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             statusText,
//             style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Expanded(
//                   child: CustButton(
//                     onTap: play,
//                     title: 'Play',
//                     fontSize: 14,
//                     height: 40,
//                   )),
//               SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                   child: CustButton(
//                     onTap: () {
//                       _isRecording = false;
//                       play(pause: true);
//                       recordFilePath = '';
//                       setState(() {});
//                     },
//                     title: 'Cancel',
//                     fontSize: 14,
//                     height: 40,
//                   )),
//               SizedBox(
//                 width: 10,
//               ),
//               statusText == "Record complete"
//                   ? Expanded(
//                   child: CustButton(
//                     onTap: () async {
//                       await _postMessage();
//                     },
//                     title: 'Send',
//                     fontSize: 14,
//                     height: 40,
//                   ))
//                   : Container(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Future<bool> checkPermission() async {
//     if (!await Permission.microphone.isGranted) {
//       PermissionStatus status = await Permission.microphone.request();
//       if (status != PermissionStatus.granted) {
//         return false;
//       }
//     }
//     return true;
//   }
//
//   void startRecord() async {
//     bool hasPermission = await checkPermission();
//     if (hasPermission) {
//       statusText = "Recording...";
//       recordFilePath = await getFilePath();
//       isComplete = false;
//       RecordMp3.instance.start(recordFilePath, (type) {
//         statusText = "Record error--->$type";
//         setState(() {});
//       });
//       _isRecording = false;
//     } else {
//       statusText = "No microphone permission";
//     }
//     print(recordFilePath);
//     setState(() {});
//   }
//
//   void pauseRecord() {
//     if (RecordMp3.instance.status == RecordStatus.PAUSE) {
//       bool s = RecordMp3.instance.resume();
//       if (s) {
//         statusText = "Recording...";
//         setState(() {});
//       }
//     } else {
//       bool s = RecordMp3.instance.pause();
//       if (s) {
//         statusText = "Recording pause...";
//         setState(() {});
//       }
//     }
//   }
//
//   void stopRecord() {
//     bool s = RecordMp3.instance.stop();
//     if (s) {
//       statusText = "Record complete";
//       isComplete = true;
//       setState(() {});
//     }
//   }
//
//   void resumeRecord() {
//     bool s = RecordMp3.instance.resume();
//     if (s) {
//       statusText = "Recording...";
//       setState(() {});
//     }
//   }
//
//   String recordFilePath = "";
//
//   void play({bool pause = false}) {
//     if (recordFilePath != null && File(recordFilePath).existsSync()) {
//       if (pause) {
//         audioPlayer.pause();
//       } else {
//         audioPlayer.play(
//           UrlSource(recordFilePath),
//         );
//       }
//     }
//   }
//
//   Future<String> getFilePath() async {
//     Directory storageDirectory = await getApplicationDocumentsDirectory();
//     String sdPath = storageDirectory.path + "/record";
//     var d = Directory(sdPath);
//     if (!d.existsSync()) {
//       d.createSync(recursive: true);
//     }
//     return sdPath + "/test_.mp3";
//   }
// }
//
// getChatId(FirebaseUser opponent, FirebaseUser me, bool group) async {
//   String chatId = "";
//   if (group == false) {
//     print('TimeStamps');
//     print(opponent.timeStamp);
//     print(me.timeStamp);
//     if (opponent.timeStamp! > me.timeStamp!) {
//       chatId = opponent.uid! + "_" + me.uid!;
//     } else {
//       chatId = me.uid! + "_" + opponent.uid!;
//     }
//   } else {
//     chatId = me.uid! + "_" + DateTime.now().millisecondsSinceEpoch.toString();
//   }
//   return chatId;
// }
//
// class InBox {
//   String? id,
//       user1,
//       user2,
//       lastMessage,
//       lastMessageTimeStamp,
//       userImage,
//       userName,
//       groupImage,
//       groupName;
//   List<String>? users;
//
//   InBox(
//       {this.id,
//         this.user1,
//         this.user2,
//         this.lastMessage,
//         this.lastMessageTimeStamp,
//         this.userName,
//         this.users,
//         this.userImage,
//         this.groupImage,
//         this.groupName});
//
//   Map<String, dynamic> toMap() {
//     return {
//       'id': this.id,
//       'user1': this.user1,
//       'user2': this.user2,
//       'lastMessage': this.lastMessage,
//       'users': this.users,
//       'groupImage': this.groupImage,
//       'groupName': this.groupName,
//       'lastMessageTimeStamp': this.lastMessageTimeStamp.toString(),
//     };
//   }
//
//   factory InBox.fromMap(Map map) {
//     return InBox(
//       id: map['id'] as String,
//       user1: map['user1'] == null ? "" : map['user1'] as String,
//       user2: map['user2'] == null ? "" : map['user2'] as String,
//       lastMessage: map['lastMessage'] as String,
//       lastMessageTimeStamp: map['lastMessageTimeStamp'] as String,
//       groupImage: map['groupImage'] ?? '',
//       groupName: map['groupName'] ?? '',
//       users: map['users'] == null ? [] : List<String>.from(map['users']),
//     );
//   }
// }