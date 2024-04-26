import 'package:flutter/material.dart';
import 'package:sem2/screens/home_screen.dart';
import 'package:sem2/screens/lecture3.2/lecScreen/lec32_part1_screen.dart';
import 'package:sem2/screens/point_history_screen.dart';
import 'package:sem2/screens/promotion_screen.dart';

class BottomTabbarScreen extends StatefulWidget {
  const BottomTabbarScreen({super.key});

  @override
  State<BottomTabbarScreen> createState() => _MainPageState();
}

class _MainPageState extends State<BottomTabbarScreen> {
  int tabIndex = 0;
  final List<Widget> screens = [
    const Lec32Part1Screen(),
    const PromotionScreen(),
    const PointHistoryScreen(),
    const Lec32Part1Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (index) {
          setState(() {
            tabIndex = index;
          });
        },
        selectedItemColor: Colors.deepPurple[400],
        unselectedItemColor: Colors.grey[300],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notff',
          ),
        ],
      ),
    );
  }
}
