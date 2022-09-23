import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vab_tag/chat/artboard8.dart';
import 'package:vab_tag/product_Screen/productScreen.dart';

import '../Campaigns/campaigns.dart';
import '../buzin/buzzin_screen.dart';

import '../my_ads_screen/my_ads.dart';
import '../shop_cart_screen/shop_cart.dart';
import '../trending_event/trending_event.dart';

class CommonAppBar extends StatelessWidget  {
  const CommonAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: const Color(0xffFF9200),
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 6,),
            GestureDetector(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
                child: Icon(Icons.menu, color: Colors.white, size: 30,)),
            SizedBox(width: 6,),
            Expanded(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: TextField(
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Color(0xffFF9200),
                          )),
                      hintText: 'Search...',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Get.to(ArtBoard8());
                // _showMyDialog();
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/mesge.png"),
                        fit: BoxFit.cover)),

                // ),
                // backgroundColor: Colors.white10,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {

                //Get.to(ArtBoard8());
              },
              child:  DropdownButtonHideUnderline(
                child:
                DropdownButton2(

                  customButton:
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dropdown.png"),
                            fit: BoxFit.fill)),
                  ),
                  customItemsIndexes: const [4],
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

            )
          ],
        ),
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
  static const List<MenuItem> firstItems = [WhatsTranding, Buzzin, Explore,ShopCart,];
  static const List<MenuItem> secondItems = [BostMyAdd,MyAds];

  static const WhatsTranding = MenuItem(text: 'Whats Trending',);
  static const Buzzin = MenuItem(text: 'Buzzin', );
  static const Explore = MenuItem(text: 'Explore', );
  static const ShopCart = MenuItem(text: 'Shop Cart', );
  static const MyAds = MenuItem(text: 'My Ads', );
  static const BostMyAdd = MenuItem(text: 'Boost My vibes', );

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
        Get.to(BuzinScreen());
      //Do something
        break;
      case MenuItems.Explore:
      Get.to(ProductPage());
      //Do something
        break;
      case MenuItems.ShopCart:
        Get.to(ShopCarts());

      //Do something
        break;
      case MenuItems.BostMyAdd:
        Get.to(MyAdScreen());
        break;
      case MenuItems.MyAds:
        Get.to( Campaigns());
        break;
    }
  }
}