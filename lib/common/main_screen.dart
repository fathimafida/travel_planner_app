// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_planner_app/features/bar_chart/bar_chart_view.dart';
import 'package:travel_planner_app/features/home/home_view.dart';
import 'package:travel_planner_app/features/profile/profile_view.dart';
import 'package:travel_planner_app/features/search/search_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final bodyView = [
    const HomeView(),
    const BarChartView(),
    const SearchView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
          unselectedFontSize: 0,
          currentIndex: _currentIndex,
          elevation: 5,
          selectedFontSize: 0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Bar Chart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
      body: bodyView[_currentIndex],
    );
  }
}
