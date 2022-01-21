import 'package:doctor_profile/pages/profile/screen_four.dart';
import 'package:doctor_profile/pages/profile/screen_one.dart';
import 'package:doctor_profile/pages/profile/screen_three.dart';
import 'package:doctor_profile/pages/profile/screen_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      ScreenOne(),
      ScreenTwo(),
      ScreenThree(),
      ScreenFour(),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF07203C),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF07203C),
        selectedItemColor: Color(0xFF2CD1A4),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}
