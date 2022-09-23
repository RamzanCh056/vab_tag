import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/custom_ads_row.dart';
import 'components/custom_button.dart';

class  MyAdScreen extends StatelessWidget {
  const MyAdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      body: SafeArea(
        child: Stack(
          children: [
           // CommonAppBar(),
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              color: Colors.orangeAccent,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vibe Tag",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Text(
                          "Booster",
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Boost Features allows tou to explore all Amazing tools over your vibes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Start Your Plan With Just Simple Click",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 90,
                                      ),
                                      Text("Price"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/icon.jpg"),
                                      Text("Torch"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("\$3/1 day"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/icon.jpg"),
                                      Text("Waves"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("\$8/1 day"),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/icon.jpg"),
                                      Text("Torch"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("\$3/1 day"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomAdsRow(
                            title: "Featured Member",
                            Torch: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Waves: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Stardom: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          ),
                          CustomAdsRow(
                            title: "See Profile Videos",
                            color: Colors.white,
                            Torch: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Waves: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Stardom: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          ),
                          CustomAdsRow(
                            title: "Show/Hide Last Seen",
                            Torch: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Waves: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            Stardom: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          ),
                          CustomAdsRow(
                            title: "Post Promotion",
                            color: Colors.white,
                            Torch: Text(
                              " 1 Post",
                              textAlign: TextAlign.center,
                            ),
                            Waves: Text(
                              " 2 Post",
                              textAlign: TextAlign.center,
                            ),
                            Stardom: Text(
                              " 5 Post",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          CustomAdsRow(
                            title: "Pages Promotion",
                            Torch: Icon(
                              Icons.cancel_sharp,
                              color: Colors.grey,
                            ),
                            Waves: Text(
                              " 1 Post",
                              textAlign: TextAlign.center,
                            ),
                            Stardom: Text(
                              " 2 Post",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          CustomAdsRow(
                            title: "Discount",
                            color: Colors.white,
                            Torch: Icon(
                              Icons.cancel_sharp,
                              color: Colors.grey,
                            ),
                            Waves: Text(
                              " 10% Discount",
                              textAlign: TextAlign.center,
                            ),
                            Stardom: Text(
                              " 20% Discount",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CustomButton(
                                title: "Boost Now",
                                color: Colors.green,
                                onTap: () {},
                              ),
                              CustomButton(
                                title: "Boost Now",
                                color: Colors.orangeAccent,
                                onTap: () {},
                              ),
                              CustomButton(
                                title: "Boost Now",
                                color: Colors.redAccent,
                                onTap: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          "Why Choose Booster",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20,),
                        Image.asset("assets/icon.jpg"),
                        Text("Get Featured"),
                        SizedBox(height: 50,),
                        Image.asset("assets/icon.jpg"),
                        Text("Show / Hide Last Seen"),
                        SizedBox(height: 50,),
                        Image.asset("assets/icon.jpg"),
                        Text("Promote your Posts Contents"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
