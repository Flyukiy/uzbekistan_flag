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

  //
  //   final pointA = Offset(0, 0);
  //   final pointB = Offset(r * sin(72.toRadian()), -r * cos(72.toRadian()));
  //   final pointC = Offset(r * sin(36.toRadian()), r * cos(36.toRadian()));
  //   final pointD = Offset(-pointC.dx, pointC.dy);
  //   final pointE = Offset(-pointB.dx, pointB.dy);
  //
  //   final Path path = Path()
  //     ..moveTo(pointA.dx, pointA.dy)
  //     ..quadraticBezierTo(pointA.dx, pointA.dy, pointD.dx, pointD.dy)
  //     ..lineTo(pointA.dx, pointD.dy)
  //     // ..lineTo(pointE.dx, pointE.dy)
  //     // ..lineTo(pointB.dx, pointB.dy)
  //     // ..lineTo(pointD.dx, pointD.dy)
  //     ..close();
  //
  //   final Paint yellowPaint = Paint()
  //     ..color = Colors.white
  //     ..style = PaintingStyle.fill;
  //
  //   final pointO = Offset(0, 0);
  //
  //   final pointI = Offset(width / 2, height / 2);
  //
  //   final translationVector = pointI - pointO;
  //
  //   final realPath = path.shift(translationVector);
  //
  //   // vẽ lại realPath
  //   canvas.drawPath(realPath, yellowPaint);
  // }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

extension NumberUtil on num {
  num toRadian() {
    return this * pi / 180;
  }
}
