import 'package:flutter/material.dart';

const kActiveCardColour = Color(0xFF0e74ea);
const kInactiveCardColour = Colors.white12;
const kActiveButton = Color(0xFF2CD1A4);
const kInactiveButton = Color(0xFF031326);
const kHeadingTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    fontFamily: 'Roboto',
);

const kHeadingIcon = Icon(Icons.more_vert, color: Colors.grey,);

final kCircleAvatar = CircleAvatar(
    backgroundColor: Colors.grey,
    radius: 35,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image.asset('images/doctor3.jpeg'),
    ),
);


