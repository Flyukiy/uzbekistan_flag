import 'dart:math';
import 'package:flutter/material.dart';

class HalfMoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DrawHalfMoon(),
      size: Size(0, 0),
    );
  }
}

class DrawHalfMoon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = 2 * width / 3;
    final double r = width / 5;
    final pointA = Offset(0, 0);

    final paint = Paint();
    paint.color = Colors.white;
    final Path pathOne = Path()
      ..moveTo(pointA.dx, pointA.dy)
      ..addOval(Rect.fromCircle(center: Offset(-20, 0), radius: 50))..close();
    final Path pathTwo = Path()
      ..moveTo(pointA.dx, pointA.dy)
      ..addOval(Rect.fromCircle(center: Offset(-5, 0), radius: 45))..close();
    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        pathOne,
        pathTwo,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}