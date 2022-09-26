import 'package:badges/badges.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vab_tag/screens/extra-screens/create_event.dart';
import '../screens/extra-screens/blogs_one.dart';
import '../screens/extra-screens/create_business_page.dart';

class TopAppbar extends StatelessWidget {
  const TopAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(
            width: 19,
          ),
          Image.asset(
            "assets/logo.png",
            height: 50,
            width: 70,
            //fit: BoxFit.fill,
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "My vibes",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 15,
          ),
          DropdownButtonHideUnderline(
            child:
            DropdownButton2(

              customButton:
              Text(
                "Set up",
                style: TextStyle(color: Colors.white),
              ),
              customItemsIndexes: [4],
              customItemsHeight: 8,
              items: [
                ...MenuItems.firstItems.map(
                      (item) =>
                      DropdownMenuItem<MenuItem>(
                        value: item,
                        child: MenuItems.buildItem(item),
                      ),
                ),
                const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
                ...MenuItems.secondItems.map(
                      (item) =>
                      DropdownMenuItem<MenuItem>(
                        value: item,
                        child: MenuItems.buildItem(item),
                      ),
                ),
              ],
              onChanged: (value) {
                MenuItems.onChanged(context, value as MenuItem);
              },
              itemHeight: 48,
              itemPadding: const EdgeInsets.only(left: 16, right: 16),
              dropdownWidth: 160,
              dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              dropdownElevation: 8,
              offset: const Offset(0, 8),
            ),
          ),

          SizedBox(
            width: 10,
          ),
          Badge(
              position: BadgePosition.topEnd(top: -5, end: -6),
              padding: EdgeInsets.all(2),
              badgeContent: Text(
                "16",
                style: TextStyle(fontSize: 12),
              ),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            "assets/commentcard.svg",
            height: 21,
            width: 20,
          ),
        ],
      ),
    );
  }
}
class MenuItem {
  final String text;


  const MenuItem({
    required this.text,

  });
}
class MenuItems {
  static const List<MenuItem> firstItems = [CreateBlog, CreateEvents, CreateGroup, CreatePages];
  static const List<MenuItem> secondItems = [];

  static const CreateBlog = MenuItem(text: 'Create Blog',);
  static const CreateEvents = MenuItem(text: 'Create Event', );
  static const CreateGroup = MenuItem(text: 'Create Group', );
  static const  CreatePages = MenuItem(text: 'Create Page', );

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
      case MenuItems.CreateBlog :
        Get.to( BlogsOne ());
        //Do something
        break;
      case MenuItems.CreateEvents:
        Get.to(CreateEvent());

      //Do something
        break;
      case MenuItems.CreateGroup:
      //Do something
        break;
      case MenuItems. CreatePages:
      //Do something
        Get.to(CreateBusinessPage());
        break;

    }
  }
}