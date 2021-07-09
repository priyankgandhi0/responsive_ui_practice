import 'package:flutter/material.dart';
import 'package:responsive_ui_practice/ui/responsive_ui_helper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
        child: ResponsiveWidget(
          mobile: Column(
            children: [
              Center(child: sampleContainer()),
              SizedBox(height: 10,),
              Expanded(child: sampleText()),
            ],
          ),
          tab: Row(
            children: [
              sampleContainer(),
              SizedBox(height: 10,),
              Expanded(child: sampleText()),
            ],
          ),),

    );
  }

  Text sampleText() {
    return Text(
      'Hey this is responsive ui practice app \nchange device orientation and device type and test ui',
      style: TextStyle(fontSize: 22),);
  }

  Container sampleContainer() {
    return Container(
      height: 180,
      width: 320,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.redAccent, Colors.pink]),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
