import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({Key? key}) : super(key: key);

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Sell new product",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // selected product type
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Product Type",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RadioListTile<int>(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                    title: Text(
                      "SIMPLE PRODUCT",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RadioListTile<int>(
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                    title: Text(
                      "VARIANT PRODUCT (Size + Color)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RadioListTile<int>(
                    value: 3,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                    title: Text(
                      "PRODUCT WITH ONLY COLOUR",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RadioListTile<int>(
                    value: 4,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                    title: Text(
                      "BULK SALE DISCOUNT (M.O.Q)",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Name"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEFEFEF),
                        hintText: "Name",
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Description"),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFEFEFEF),
                      hintText: "Please describe your product",
                      contentPadding: EdgeInsets.all(20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Additional Information"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEFEFEF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Text("File"),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Edit"),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("View"),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Format"),
                                      Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1,
                                height: 0,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset('assets/share back.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/share.svg'),
                                  SizedBox(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 1,
                                      width: 10,
                                    ),
                                  ),
                                  Text("Format"),
                                  Icon(Icons.arrow_drop_down),
                                  SizedBox(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 1,
                                      width: 10,
                                    ),
                                  ),
                                  Icon(Icons.format_bold),
                                  Icon(Icons.format_italic),
                                  SizedBox(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 1,
                                      width: 10,
                                    ),
                                  ),
                                  Icon(Icons.format_align_left),
                                  Icon(Icons.format_align_center),
                                  Icon(Icons.format_align_right),
                                  Icon(Icons.format_align_justify),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1,
                                height: 0,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/Group 1290.svg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/Group 1289.svg'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(10),
                                ),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Text(
                              "P",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Price"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEFEFEF),
                          hintText: '0.00',
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sale Price"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEFEFEF),
                          hintText: '0.00',
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Leave empty if not on sale.",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Price"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Location"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEFEFEF),
                          hintText: 'Enter a location',
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sale Price"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other Photos",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.photo_size_select_actual_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Select all your images at once, Images can be added in product edit page.")
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Product Category",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Category"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Select",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(" Sub Sub Category"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Select",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sub Category"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Select",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Sub Sub Sub Category"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Select",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Type of condition
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Type of Condition"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "New",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Add model number"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "A12 etc",
                          filled: true,
                          fillColor: Color(0xFFEFEFEF),
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Brand"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Brand name here",
                          filled: true,
                          fillColor: Color(0xFFEFEFEF),
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Amount of Stack here"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Retuenable
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Retuenable"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "No",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Same Delivery Cost"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Yes",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Same Delivery Cost for More then 1 Product"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Post as
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Post as"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Haritlw - Page",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_up),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9200),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Publish",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
