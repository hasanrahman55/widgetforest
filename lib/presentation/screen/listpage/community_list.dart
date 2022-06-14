import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CommunityList extends StatefulWidget {
  CommunityList({Key? key}) : super(key: key);

  @override
  State<CommunityList> createState() => _CommunityListState();
}

class _CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Container(
        width: width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/a.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Positioned(
              top: 38,
              left: 20,
              child: Text(
                "Hello Hasan",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const Positioned(
              top: 300,
              child: Text(
                "Join Various community",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            const Positioned(
              top: 38,
              right: 20,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xffC2D89A),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 10,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.55),
              padding: const EdgeInsets.all(28),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.games),
                            ),
                            SizedBox(height: 8),
                            const Text("games"),
                          ],
                        );
                      },
                      separatorBuilder: (context, int) => SizedBox(width: 20),
                      itemCount: 8,
                    ),
                  ),
                  Text("Community List"),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/a.png",
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("This is titel"),
                                  SizedBox(height: 10),
                                  Text("This is subtitle"),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffCBDDAD),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                      },
                      separatorBuilder: (context, int) => SizedBox(height: 20),
                      itemCount: 8,
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Color(0xffF6FEED),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
