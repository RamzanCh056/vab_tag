import 'package:flutter/material.dart';
import 'package:vab_tag/common/appbar.dart';
import '../on_sale_screen/components/magazine.dart';
import '../on_sale_screen/components/salesitem.dart';
import 'components/customWidget.dart';

class OnSale extends StatelessWidget {
  const OnSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(
        child: ListView(
          children: [
            CommonAppBar(),
            BottomAppBar(),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xFFF7F7F7), boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 6,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                )
              ]),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFFD9225), shape: BoxShape.circle),
                    child: Icon(
                      Icons.percent_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Product on sale",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 830,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomWidget(),
                      SizedBox(width: 10,),
                      CustomWidget(),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CustomWidget(),
                      SizedBox(width: 10,),
                      CustomWidget(),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CustomWidget(),
                      SizedBox(width: 10,),
                      CustomWidget(),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CustomWidget(),
                      SizedBox(width: 10,),
                      CustomWidget(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFEB1C3),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Peoples just added to their wishlists",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,color: Colors.white
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //ListView.Builder
                  Container(
                    height: 230,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: SalesItem(
                              title: "Toomax Storaway 1670",
                              button1Text: "Garden & Pets",
                              price: "£220.00",
                              button2Text: "Storage",
                              oldPrice: "£235.00",
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black),
                          child: Text("See offers"),
                        ),
                        Spacer(),
                        Container(
                            height: 36,
                            width: 31,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xFFB1B1B1),
                              ),
                            )),
                        SizedBox(width: 10,),
                        Container(
                          height: 36,
                          width: 31,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xFFB1B1B1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),


            // Magazine
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.grey.shade300,
              child: Column(
                children: [

                  // Magazine
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: Text(
                        "Magazine",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                        "A world of inspiration",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                        "READ MARKET SHOP MAGAZINE",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Magazine(
                    title1: "Cradle to Cradle",
                    title2: "#vibetagshop",
                    subtitle: "Read Story",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Magazine(
                    title1: "Cradle to Cradle",
                    title2: "#vibetagshop",
                    subtitle: "Read Story",
                  ),
                  SizedBox(
                    height: 20,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


