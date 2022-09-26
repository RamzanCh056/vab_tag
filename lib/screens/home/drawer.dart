import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vab_tag/screens/new/thridpage.dart';
import '../extra-screens/blogs_one.dart';
import '../extra-screens/create_ad_mobile.dart';
import '../extra-screens/memories_mobile.dart';
import '../Events_screen/events-screen.dart';
import '../find_vibes_screen/find_vibes.dart';
import '../gift_screen/gift_screen.dart';
import '../jobs_screen/jobs_screen.dart';
import '../market_screen/market_screen.dart';
import '../my_activity_screen/my_activity.dart';
import '../my_articles/my_articles/my_article_main_screen.dart';
import '../my_page_screen/browse_event_screen.dart';
import '../nodge_screen/Nodge.dart';
import '../offer_screen/offer_screen.dart';
import '../playlist/playlist.dart';
import '../profile/artboard17.dart';
import '../settings/setting_mobile.dart';
import 'home_page.dart';

enum SingingCharacter { lafayette, jefferson }

SingingCharacter? _character = SingingCharacter.lafayette;

class Draweer extends StatefulWidget {
  const Draweer({Key? key}) : super(key: key);

  @override
  State<Draweer> createState() => _DraweerState();
}

class _DraweerState extends State<Draweer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  // AssetImage('images/image4.png'),
                                  AssetImage('images/image4.png'),
                              backgroundColor: Colors.grey,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: const [
                                Text(
                                  'David Millan',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // SizedBox(height: 5,),
                                Text(
                                  '@david_milan1',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        // Container(
                        //     color: Colors.grey,
                        //     child: Image.asset('images/abc.PNG'))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Lorumipsum dolor ipsum with lorum ipsum and dolor ipsam and then again lorum ipsum dolor ipsum',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.edit,
                              size: 18,
                              color: Colors.grey.shade500,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(ArtBoard17());
                      //_showMyDialog1();
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Profile.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'My profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    //  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                    onTap: () {
                      //_showMyDialog1();
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/savepost.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Save posts',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      _showMyDialog1();
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Live broadcasting.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Live broadcast',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      // Get.to(ThridPage());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Album.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Album',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(MarketScreen());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('images/Explore_Gold-bk.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      // Get.to(ThridPage());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Cart.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Shop cart',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(MyPageHomeScreen());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/page.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'My pages',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,

                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    //contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(ThridPage());
                      // Get.to(MyGroupsHomeScreen());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/team_Gold.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Groups',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(playlist());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Playlists.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Playlist',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(CreateAdMobile());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/vibe.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Find Friends',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(Nodge());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Nodge.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Nodge',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      // Get.to(StoreHome  ());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/popular.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Popular Post',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 8,
                    minLeadingWidth: 18,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(FindVibes());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/vibe.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Find vibes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      // Get.to(StoreHome  ());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/market.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Market',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      // Get.to(BlogsOne());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/product.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'My product',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(BlogsOne());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/blog.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Blogs',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(MyArticleHomeSceen());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/My_thoughts_Icon_Gold-bk.png',
                          fit: BoxFit.cover,
                          height: 30,
                          color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'My articles',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(Events());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/event_Gold-bk.png',
                          fit: BoxFit.cover,
                          height: 30,
                          color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Events',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(MyActivity());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/history-icon.png',
                          fit: BoxFit.cover,
                          height: 30,
                          color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'My activities ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {},
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/memory-bk.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Memories',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(Jobs());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/jobs.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Jobs',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {},
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/funding-icon.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Funding',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(OfferScreen());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/offer.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Offer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {
                      Get.to(MemoriesMobile());
                    },
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Adverting.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Advertising',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(GiftScreen());
                    },
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/gift.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'Gifts',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/see-more-new.png',
                          fit: BoxFit.cover, color: HexColor("#FF9200")),
                    ),
                    title: Text(
                      'See more',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    dense: true,
                    minLeadingWidth: 18,
                    horizontalTitleGap: 8,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    leading: InkWell(
                      onTap: () {
                        Get.to(SettingMobile());
                      },
                      child: Icon(
                        Icons.settings,
                        color: HexColor("#FF9200"),
                        size: 35,
                      ),
                    ),
                    title: Text(
                      'Setting',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
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
                                  child:
                                      SvgPicture.asset("images/Path 125.svg"),
                                ),
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
                          CustomDialogBox();
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
