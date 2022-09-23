import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/appbar.dart';

class Jobs extends StatelessWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              CommonAppBar(),
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nearby Business",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Find business near to you based on your location and connect with them directly",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Expanded(child: Image.asset("assets/group.png")),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Explore",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //Jobs

              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Icon(
                            Icons.forward_to_inbox,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jobs",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0), shape: BoxShape.circle),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 230,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search job",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      child: VerticalDivider(),
                                    ),
                                    Icon(
                                      Icons.category,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Design and art",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.grey,
                                      size: 20,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        CustomChip(
                          title: "Full Time",
                          color: Colors.orange,
                        ),
                        CustomChip(
                          title: "Part Time",
                        ),
                        CustomChip(
                          title: "Full Time",
                        ),
                        CustomChip(title: "Full Time"),
                        CustomChip(
                          title: "Full Time",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFF0F0F0),
                      ),
                      title: Text(
                        "Company Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Place of company",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Job Title",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and typesetting industry. Lorem Ipsum., Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum  ",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Required Education",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and dummy text of the printing and typesetting industry. Lorem Ipsum.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Required Skills",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        CustomChip(
                          title: "Skill A",
                        ),
                        CustomChip(
                          title: "Skill B",
                        ),
                        CustomChip(
                          title: "Skill C",
                        ),
                        CustomChip(title: "Skill D"),
                        CustomChip(
                          title: "Skill E",
                        ),
                        CustomChip(
                          title: "Skill N",
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Apply",style: TextStyle(color: Colors.white),),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                color: Color(0xFFFF9200),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Market Place\nTerms",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Your\nWishlist",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Refund\nPolicy",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "On Sale\nItems",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start\nSelling",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Find Help &\nSupport",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Row(children: [
                Text("C 2022 VibeTag"),
                Spacer(),
                Text("C 2022 VibeTag"),
              ],),),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String? title;
  final Color? color;

  const CustomChip({
    Key? key,
    this.title,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color!)),
      child: Text(
        title!,
        style: TextStyle(color: color!),
      ),
    );
  }
}
