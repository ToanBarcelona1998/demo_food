import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';

class PaintFood extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var path=Path()..moveTo(size.width, 0.0)
    ..conicTo(0.95*size.width, -20.0, 0.8*size.width, -30, 1)
    ..lineTo(0.2*size.width, -30)
    ..conicTo(0.05*size.width, -20, 0.0, 0.0, 1)
    ..lineTo(0.0, size.height)
    ..lineTo(size.width, size.height)
    ..close();
    ;
    var paint=Paint()..style=PaintingStyle.fill
    ..shader=ui.Gradient.linear(Offset(0.0,size.height), Offset(0.8*size.width,-30), [Color(0xffe6f0fa),Color(0xffb2cea9)]);
    
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}