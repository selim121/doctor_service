import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {

  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF07203C),
      body: Center(
        child: Text('Screen four',
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
