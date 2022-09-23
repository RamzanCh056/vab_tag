import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vab_tag/common/appbar.dart';
import '../common/bottom_appbar.dart';
import '../common/common_bottom_widget.dart';
import '../find-help_screen/find_help.dart';
import '../on_sale_screen/onSale.dart';
import 'componnets/salesitem.dart';
import 'componnets/magazine.dart';
import 'componnets/summaryrow.dart';

class ShopCarts extends StatelessWidget {
  const ShopCarts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: ListView(

          children: [
            CommonAppBar(),


            /// Cart
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Cart",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset("assets/kettle.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Morphy Richards 102783 Equip Jung Kettle-Black",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "Richards",
                                style: TextStyle(),
                              ),
                            ),
                            Row(
                              children: [
                                Text('Express Delivery | -7 days =  '),
                                Text(
                                  '\$6',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Price: \$25.2x1 = '),
                                Text(
                                  '\$25.2',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //Buttons
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Text(
                                          "1",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Spacer(),
                                        //Buttons
                                        Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  10)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  )),
                                              child: Icon(
                                                Icons.keyboard_arrow_up,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  )),
                                              child: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Order",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Summary",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SummaryRow(
                    title: 'Total',
                    price: '\$25.2',
                  ),
                  SummaryRow(
                    title: 'Delivery Charges',
                    price: '\$6',
                  ),
                  SummaryRow(

                    title: 'Commission fees ',
                    price: '\$1.26',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "5% of Total",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SummaryRow(
                    title: 'Buyers Protection',
                    price: '\$1.26',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "5% of Total",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SummaryRowTwo(

                    title: 'Grand Total',
                    price: '\$32.46',
                    color: Colors.orange,
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
              color: Colors.white,
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
                  BottomWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  CopyRight(),
                  SizedBox(height: 20,),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
class SummaryRowTwo extends StatelessWidget {
   String ? title;
   String ? price;
   Color ? color;
  Color? rang;

   SummaryRowTwo ({this.title, this.price, this.color,this.rang= Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [

          Text(title!,style: TextStyle(fontSize: 17,color: Colors.white ),),
          Spacer(),
          Text(price!,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500, color: Colors.white),),
        ],
      ),
    );
  }
}