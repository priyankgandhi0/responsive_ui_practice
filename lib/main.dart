import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui_practice/ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home:  HomePage(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: Myclipper(),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                color: Colors.teal
              ),
            ),
          ),


        ],
      ),
    );
  }


}

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
