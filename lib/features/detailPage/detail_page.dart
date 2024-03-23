import 'package:flutter/material.dart';
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
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 360,
                width: double.infinity,
                decoration: BoxDecoration(
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
                    icon: Icon(Icons.arrow_back)),
              ],
            )),
            Positioned(
              top: 330,
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 510,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        largeTextStyle("Yosemite", 20),
                        largeTextStyle(" \$${250}", 20, color: Colors.black54),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        smallTextStyle("Usa,California", 14),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
