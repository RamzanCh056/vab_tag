import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../common/appbar.dart';
import '../my_groups/join_group.dart';
import '../my_groups/sugested_group.dart';

class ThridPage extends StatelessWidget {
  const ThridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     DefaultTabController(
        length: 4,
        child:
        Scaffold(

          body: SafeArea(

            child: Column(children: [
              CommonAppBar(),
              // BottomAppbar(),
              TabBar(
                labelColor: const Color.fromARGB(250, 238, 146, 29),
                unselectedLabelColor: Colors.black,
                indicatorColor: const Color.fromARGB(250, 238, 146, 29),
                labelPadding: EdgeInsets.symmetric(vertical: 6 ),
                tabs: [
                  const Tab(
                    text: "My Group",
                  ),
                  const Tab(text: "Suggested Group"),
                  const Tab(
                    text: "Join Group",
                  ),
                  Container(
                    // width: 100,
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(250, 238, 146, 29),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: GestureDetector(
                            onTap: (){
                              Get.to( SuggestedGroup());
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "Create",
                                  style: TextStyle(color: Colors.white),
                                ),
                                // const SizedBox(
                                //   width: 2,
                                // ),
                                // Container(
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(10),
                                //     color: Colors.white,
                                //   ),
                                //   child: const Icon(
                                //     Icons.add,
                                //     size: 15,
                                //     color: Color.fromARGB(250, 238, 146, 29),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        )),
                  )
                ],
              ),
              Expanded(

                child: TabBarView(
                  children: [
                    FirstScreen(),
                    Container(),
                    JoinGroup(),
                    FourthScreen(),
                  ],
                ),
              ),
            ],),
          )
        ),
      );

  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.3,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: const [
          Expanded(child: doubleWidget()),
          Expanded(child: doubleWidget()),
        ],
      ),
    );
  }
}

class doubleWidget extends StatelessWidget {
  const doubleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 20,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Haritla",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.person,
                              color: Color.fromARGB(250, 238, 146, 29),
                            ),
                            Text(
                              "23K people",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.sports_volleyball,
                              color: Color.fromARGB(250, 238, 146, 29),
                            ),
                            Text(
                              "Cars and Vehicles",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(250, 238, 146, 29),
                  ),
                  child: const Center(
                    child: Text(
                      "Edit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ThridScreen extends StatelessWidget {
  const ThridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
