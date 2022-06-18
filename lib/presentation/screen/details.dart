import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // leading: InkWell(
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //   child: CircleAvatar(
            //     radius: 18,
            //     backgroundColor: Colors.white,
            //     child: Center(
            //       child: Icon(
            //         Icons.arrow_back_ios_new,
            //         color: Colors.black,
            //         size: 18,
            //       ),
            //     ),
            //   ),
            // ),
            // bottom: Container(),
            expandedHeight: 400.0,
            floating: true,

            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/a.png",
                fit: BoxFit.fill,
              ),
              title: Text(
                'Folowers Festival',
                textAlign: TextAlign.start,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xff5c63f1),
              height: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(30.0),
                        topRight: const Radius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dec"),
                            Text(
                              "24",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Mon Day",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "08:10 am",
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "add",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xffA8C671),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE7F4CF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage("assets/a.png"),
                          ),
                          Positioned(
                            right: -10,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage("assets/a.png"),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        child: Center(
                          child: Text(
                            "Join",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff222222),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(6),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color(0xffC2D89A),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text("Swip and let's go"),
                      ],
                    ),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffA8C671),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
