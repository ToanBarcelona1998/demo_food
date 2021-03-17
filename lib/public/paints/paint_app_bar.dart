import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';

class PaintAppBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..moveTo(0.0, 0.0)
      ..lineTo(0.0, size.height)
      ..lineTo(size.width * 0.2, size.height)
      ..cubicTo(0.15 * size.width, 0.6 * size.height, 0.4 * size.width,
          0.6 * size.height, size.width, 0.5 * size.height)
      ..lineTo(size.width, 0.0)
      ..close();
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(0.0, 0.0),
          Offset(size.width, size.height),
          [Color(0xff7ca687), Color(0xff8a86c4)]);


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
