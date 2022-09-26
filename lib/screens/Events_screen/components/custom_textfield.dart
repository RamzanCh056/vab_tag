import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String? hintText;
  final int? maxLine;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300,
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}