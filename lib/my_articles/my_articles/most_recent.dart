import 'package:flutter/material.dart';

class MostRecent extends StatelessWidget {
  const MostRecent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            children: [
              PostCard(),
              SizedBox(height: 10,),
              PostCard(),
              SizedBox(height: 10,),
              PostCard(),
              SizedBox(height: 10,),
              PostCard(),
              SizedBox(height: 10,),
              Center(child: Text("see more articles",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("David Millan"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("@david millan1"),
                  Row(
                    children: [
                      Text(
                        "bestquality",
                        style: TextStyle(
                            fontSize: 12, color: Colors.orange),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "22",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: FittedBox(
                child: Row(
                  children: [
                    Icon(
                      Icons.flag,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text("Press")),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image.asset('assets/home.jpg'),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "FRANK MULLER V 45 SCDT  COBRA ST Cobra Replica Watch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      text:
                          "FRANK MULLER V 45 SCDT  COBRA ST Cobra Replica Watch..",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Read more",
                          style: TextStyle(color: Colors.blue),
                        )
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
