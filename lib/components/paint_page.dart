import 'package:doctor_profile/constants.dart';
import 'package:flutter/material.dart';


class MaxCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 1.8);

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      center,
      size.width * 1 / 2.4,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
class MidCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width /1.3, size.height / 10);

    final paint = Paint()
      ..color = kActiveCardColour
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      center,
      size.width * 1 / 25,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
class MinCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width /1.15, size.height / 8);

    final paint = Paint()
      ..color = kActiveButton
      ..strokeWidth = 10
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      center,
      size.width * 1 / 80,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


