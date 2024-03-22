import 'package:flutter/material.dart';
import 'package:travel_planner_app/common/helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            largeTextStyle("Discover", 25),
          ],
        ),
      ),
    );
  }
}
