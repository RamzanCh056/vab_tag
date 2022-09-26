import 'package:flutter/material.dart';

import 'components/customRow.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    trailing: Icon(Icons.arrow_drop_down),
                    title: Row(
                      children: [
                        Text(
                          "Shoppingfrenzy",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.blue, fontSize: 8),
                        ),
                        Text(
                          "Added products for sale",
                          style: TextStyle(color: Colors.blue, fontSize: 8),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text("5 minutes ago"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.add_circle_outline),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  Image.asset('assets/Mask Group 359.png'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      '150 PC art set extravaganza',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          "London",
                        ),
                        Container(
                          height: 7,
                          width: 7,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "1000 In stock",
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomRow(
                    title: 'Contact seller',
                    icon: Icons.message,
                  ),
                  CustomRow(
                    title: 'Price \$13.99 (GBP)',
                    icon: Icons.label,
                  ),
                  CustomRow(
                    title: 'Type New',
                    icon: Icons.bookmark,
                  ),
                  CustomRow(
                    title: 'Standard Delivery | 7 - 10 Days',
                    icon: Icons.source,
                  ),
                  CustomRow(
                    title:
                        'A lovely set of art pens, pencils and paint\nAnd much more.',
                    icon: Icons.bookmark,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Material: Plastic"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    color: Colors.orange,
                    child: Text("View Details",style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.emoji_emotions_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text("Like"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("465"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.message),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text("Comments"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("321"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.refresh_sharp),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text("Revibed"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("212"),
                              ],
                            ),
                          ],
                        ),
                      ],
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
