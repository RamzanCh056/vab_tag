import 'package:flutter/material.dart';
import 'package:vab_tag/market_screen/post_screen.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                indicatorColor: Color(0xFFFD9225),
                labelColor: Color(0xFFFD9225),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'Posts',
                  ),
                  Tab(
                    text: 'Users',
                  ),
                  Tab(
                    text: 'Pages',
                  ),
                  Tab(
                    text: 'Groups',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PostScreen(),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
