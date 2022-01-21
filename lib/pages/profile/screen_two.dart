import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF07203C),
      body: Center(
        child: Text('Screen two',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: 'Nex'
        ),
        ),
      ),
    );
  }
}
