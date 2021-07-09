import 'package:flutter/material.dart';

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    var controllPoint = Offset(50, size.height);
    var endpoint = Offset(size.width /2, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endpoint.dx,endpoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }

}