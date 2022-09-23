import 'package:flutter/material.dart';

import '../common/appbar.dart';
import '../common/bottom_appbar.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(

            children: [
              CommonAppBar(),
              BottomAppbar(),

             Stack(children: [
               Column(
                 children: [
                   Container(
                     color: const Color.fromARGB(250, 238, 146, 29),
                     height: MediaQuery.of(context).size.height / 5,
                     width: MediaQuery.of(context).size.width,
                     child: Column(children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Padding(
                             padding: EdgeInsets.only(top: 20.0),
                             child: Text(
                               "Vibe Tag",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 25,
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                           ),
                           const SizedBox(
                             width: 10,
                           ),
                           Align(
                             alignment: Alignment.bottomRight,
                             child: Container(
                               color: Colors.white,
                               child: const Center(
                                 child: Padding(
                                   padding: EdgeInsets.only(
                                     left: 10.0,
                                     right: 10.0,
                                     top: 2,
                                     bottom: 2,
                                   ),
                                   child: Text(
                                     "Booster",
                                     style: TextStyle(
                                       color: Color.fromARGB(250, 238, 146, 29),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(
                         height: 15,
                       ),
                       const Text(
                         "Boost Features allows you to explore all",
                         style: TextStyle(
                           color: Colors.white60,
                           fontWeight: FontWeight.w800,
                         ),
                       ),
                       const Text(
                         "Amazing tools over your vibes",
                         style: TextStyle(
                           color: Colors.white60,
                           fontWeight: FontWeight.w800,
                         ),
                       )
                     ]),
                   ),
                 ],
               ),
             ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Column(
                        children: [
                          const Text(
                              "Start Your Plan With Just Simple Click"),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              children: [
                                CustomCol(
                                  icon: Container(),
                                  title: const Text(""),
                                  price: "Price",
                                ),
                                const CustomCol(
                                  icon: Icon(
                                    Icons.person,
                                  ),
                                  title: Text("waves"),
                                  price: "\$3/1day",
                                ),
                                const CustomCol(
                                  icon: Icon(Icons.light),
                                  title: Text("Stardom"),
                                  price: "\$8/1day",
                                ),
                                const CustomCol(
                                  icon: Icon(Icons.home),
                                  title: Text("waves"),
                                  price: "\$30/1day",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.3,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 35),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Material(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, bottom: 8, right: 10, left: 10),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Featured"),
                                      Text("Member"),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 45),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                const SizedBox(
                                  width: 65,
                                ),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 65.0),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 35),
                      child: Card(
                        elevation: 1,
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8, right: 10, left: 10),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("See Profile"),
                                      Text("visitors"),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 35),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 65.0),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 35),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Material(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, bottom: 8, right: 10, left: 10),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Show/Hide"),
                                      Text("Lastseen"),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 35),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 65.0),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const RaisedRowman(
                      text: "Posts",
                      text2: "Promotion",
                      icon1: Text("1 Post"),
                      icon2: Text("2 Posts"),
                      icon3: Text("5 posts"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 20),
                      child: Material(
                        elevation: 0,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 8, right: 10, left: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // const SizedBox(
                              //   width: 10,
                              // ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Pages"),
                                  Text("Promotion"),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text("1 Post"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text("1 Post"),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Material(
                        elevation: 10,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [

                                    Column(
                                      children: const [
                                        Text("Discount"),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Icon(
                                      Icons.close,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Column(children: const [
                                      Text("10%"),
                                      Text("Discount")
                                    ]),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20.0),
                                      child: Column(children: const [
                                        Text("20%"),
                                        Text("Discount")
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0, bottom: 15),
                                    child: Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.green),
                                      child:
                                          const Center(child: Text("Boost Now")),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            250, 238, 146, 29),
                                      ),
                                      child:
                                          const Center(child: Text("Boost Now")),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      width: 90,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.red),
                                      child:
                                          const Center(child: Text("Boost Now")),
                                    ),
                                  ),
                                ]),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Why Choose Booster",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: const [
                        Icon(
                          Icons.picture_as_pdf,
                          color: Colors.red,
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Get Featured",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: const [
                        Icon(
                          Icons.home,
                          color: Colors.amber,
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Show/Hide Last Seen",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: const [
                        Icon(
                          Icons.precision_manufacturing_outlined,
                          color: Colors.green,
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Promote your Posts contents",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ],
                    ),
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

class CustomCol extends StatelessWidget {
  const CustomCol({
    Key? key,
    required this.icon,
    required this.title,
    required this.price,
  }) : super(key: key);

  final Widget icon;
  final Widget title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.9,
      child: Column(
        children: [
          ListTile(
            title: icon,
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: title,
            ),
            contentPadding: const EdgeInsets.only(
              top: 0,
              left: 0,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(price)
        ],
      ),
    );
  }
}

class RaisedRowman extends StatelessWidget {
  const RaisedRowman(
      {Key? key,
      required this.icon1,
      required this.icon2,
      required this.icon3,
      required this.text,
      required this.text2})
      : super(key: key);

  final Widget icon1;
  final Widget icon2;
  final Widget icon3;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 20),
      child: Material(
        elevation: 1,
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8.0, bottom: 8, right: 10, left: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text),
                  Text(text2),
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: icon1,
              ),
              const SizedBox(
                width: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: icon2,
              ),
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: icon3,
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ),
    );
  }
}
