import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:widgetforest/presentation/screen/details.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.games_outlined,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
            title: Text("Hello bhai"),
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
            child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 10, left: 20),
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int) {
                    return Column(children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.games),
                      ),
                      SizedBox(height: 8),
                      const Text("games"),
                    ]);
                  },
                  separatorBuilder: (context, int) => SizedBox(width: 30),
                  itemCount: 10,
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 30, bottom: 20, right: 20),
              child: Text(
                "Community List",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Details(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class CommunityList extends StatefulWidget {
  CommunityList({Key? key}) : super(key: key);

  @override
  State<CommunityList> createState() => _CommunityListState();
}

class _CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        borderRadius: radius,
        minHeight: 300,
        maxHeight: 600,
        panelBuilder: (ScrollController sc) => _scrollingList(sc),
        body: const CustomBody(),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc) {
  return Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(height: 20),
        ],
      ),
    ),
  );
}

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
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
              Icons.games,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
