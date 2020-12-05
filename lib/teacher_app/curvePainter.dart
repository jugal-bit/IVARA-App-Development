import 'package:flutter/material.dart';
import 'package:ivara_app_development/teacher_app/constants.dart';
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = yellow;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;
    var path = Path();
    var pathShadow=Path();
    path.lineTo(size.width*0.8, 0);
    path.quadraticBezierTo(
        size.width*0.9, size.height/2, size.width*0.8, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);

    pathShadow.moveTo(size.width*0.7, 0);
    pathShadow.quadraticBezierTo(
        size.width*0.85 , size.height/2.3, size.width*0.7, size.height);
    pathShadow.lineTo(0, size.height);
    pathShadow.lineTo(0, 0);
    canvas.drawShadow(path, Color(0xFFb1b1b1), 6.0, false);
  
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}