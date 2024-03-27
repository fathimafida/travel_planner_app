import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_planner_app/common/helper.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 350,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.lovepik.com/photo/45009/1475.jpg_wh860.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ],
              )),
              Positioned(
                top: 320,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            largeTextStyle("Yosemitte", 25),
                            largeTextStyle("\$${250}", 20),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            smallTextStyle("USA,California", 12),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        largeTextStyle("People", 18),
                        mediumTextStyle("Number of people in your group", 15),
                        Wrap(
                          children: List.generate(5, (index) {
                            return Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all()),
                              child: const Icon(Icons.person),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        largeTextStyle("Description", 18),
                        mediumTextStyle(
                          "Kayaking is a sport and recreational activity in which an individual uses a Kayak, a small boat, typically narrow and shallow, unpowered, to navigate waterways. It is a popular recreational activity, a competitive sport, and a means of transportation in some cases.",
                          15,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: const Icon(Icons.favorite_outline),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: FilledButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Book Trip Now",
                                      style: TextStyle(fontSize: 20)),
                                  SizedBox(width: 10),
                                  Icon(Icons.flight_land_outlined),
                                ],
                              ),
                              style: FilledButton.styleFrom(
                                  minimumSize: Size(double.maxFinite, 52),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                          )
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
