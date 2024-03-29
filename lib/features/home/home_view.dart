// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_planner_app/common/helper.dart';
import 'package:travel_planner_app/features/detailPage/detail_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Icon(Icons.search),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: largeTextStyle("Discover", 25),
              ),
              SizedBox(
                height: 0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorPadding: EdgeInsets.zero,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  labelPadding: EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  // indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  tabs: const [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspiration",
                    ),
                    Tab(
                      text: "Emotions",
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 250,
                  width: double.maxFinite,
                  child: TabBarView(controller: _tabController, children: [
                    ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              navigateTO(context, DetailPage());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 300,
                              width: 200,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          );
                        }),
                    Container(
                        height: 30,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        )),
                    const Text("Emotions"),
                  ])),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  largeTextStyle("Available Tickets", 24),
                  smallTextStyle("See all", 15)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 184, 233, 233),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          largeTextStyle("NYC", 20),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 2.5,
                                color: Color(0xFF264653),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (constraints.constrainWidth() /
                                                      10)
                                                  .floor(),
                                              (index) => SizedBox(
                                                  height: 1,
                                                  width: 5,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF264653),
                                                      // color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(20),
                                                        bottomRight:
                                                            Radius.circular(20),
                                                      ),
                                                    ),
                                                  ))));
                                    },
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                      angle: 1.5,
                                      child: Icon(
                                        Icons.local_airport_rounded,
                                        color: Color(0xFF264653),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 2.5,
                                  color: Color(0xFF264653),
                                )),
                          ),
                          Spacer(),
                          largeTextStyle("LDN", 20)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mediumTextStyle("New York", 18),
                          mediumTextStyle("8H 30M", 18),
                          mediumTextStyle("London", 18)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                width: double.maxFinite,
                color: Color.fromARGB(255, 184, 233, 233),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: LayoutBuilder(builder: (context, constraints) {
                      return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 10).floor(),
                              (index) => SizedBox(
                                  height: 1,
                                  width: 5,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF264653),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                  ))));
                    })),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 184, 233, 233),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  largeTextStyle("Explore More", 24),
                  smallTextStyle("See all", 15)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreCard(
                      title: "Balloning",
                      image:
                          "https://cdn2.vectorstock.com/i/1000x1000/81/16/cartoon-hot-air-balloon-vector-25188116.jpg",
                    ),
                    ExploreCard(
                      title: "Kayaking",
                      image:
                          "https://img.lovepik.com/photo/45009/1475.jpg_wh860.jpg",
                    ),
                    ExploreCard(
                      title: "Hiking",
                      image:
                          "https://img.freepik.com/free-vector/disabled-man-with-prosthetic-legs-going-hiking-mountains-cartoon-vector-illustration_1284-76427.jpg?size=626&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais",
                    ),
                    ExploreCard(
                      title: "Snorkling",
                      image:
                          "https://static.vecteezy.com/system/resources/previews/000/208/412/non_2x/scuba-diving-vector-illustration.jpg",
                    ),
                    ExploreCard(
                      title: "Skying",
                      image:
                          "https://t4.ftcdn.net/jpg/02/38/01/05/360_F_238010554_POIZXUVxMJrkXUJ1kFXy7u2CcXFpyN8D.jpg",
                    ),
                    ExploreCard(
                      title: "Zipline",
                      image:
                          "https://static.vecteezy.com/system/resources/previews/016/690/647/original/zip-line-illustration-with-visitors-walking-on-an-obstacle-course-and-outdoor-rope-adventure-park-in-forest-in-flat-cartoon-hand-drawn-templates-vector.jpg",
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

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(right: 10),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
              image: DecorationImage(
                  image: CachedNetworkImageProvider(image), fit: BoxFit.cover),
            )),
        SizedBox(
          height: 10,
        ),
        Text(title)
      ],
    );
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter

    return _circlePointer(color: color, radius: radius);
  }
}

class _circlePointer extends BoxPainter {
  final Color color;
  double radius;
  _circlePointer({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2 - radius / 2, cfg.size!.height - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
