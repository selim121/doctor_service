import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF07203C),
      body: Center(
        child: Text('Screen three',
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
