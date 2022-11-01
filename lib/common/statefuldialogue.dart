import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomDialogue extends StatefulWidget {
  const CustomDialogue({Key? key}) : super(key: key);

  @override
  State<CustomDialogue> createState() => _CustomDialogueState();
}

class _CustomDialogueState extends State<CustomDialogue> {
  File? image;

  Future pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final tempimage = File(image.path);
    setState(() {
      this.image = tempimage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return AlertDialog(
                              content: image == null
                                  ? Container(
                                      height: 300,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () async {
                                                await pickImage();
                                                setState((){});
                                              },
                                              child: Text("Gallery"),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Text("Camera"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 300,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: FileImage(image!),
                                      )),
                                    ),
                            );
                          },
                        );
                      });
                },
                child: Text("Pick Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
