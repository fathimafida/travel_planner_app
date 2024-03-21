import 'package:flutter/material.dart';
import 'package:travel_planner_app/common/helper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List onBoardingData = [
    'assets/images/onboardingImg 2.jpg',
    'assets/images/onboardingImg 3.jpg',
    'assets/images/onboardingImg 1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(onBoardingData[index]),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index == 0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                largeTextStyle(
                                  "Trips",
                                  40,
                                  color: Colors.black,
                                ),
                                mediumTextStyle("Mountains", 30,
                                    color: Colors.black54),
                                Container(
                                  width: 250,
                                  child: smallTextStyle(
                                      "Mountain hikes gives you an incredible sense of experiance along with endurance.",
                                      18,
                                      color: Colors.black38),
                                ),
                              ],
                            )
                          : Container(),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 3),
                            height: index == indexDots ? 30 : 8,
                            width: 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index == indexDots
                                    ? Colors.black
                                    : Colors.black26),
                          );
                        }),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
