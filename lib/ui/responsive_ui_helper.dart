import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget ?tab;

 const ResponsiveWidget({ this.mobile, this.tab,});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 768) {
        return mobile!;
      } else {
        return tab!;
      }
    });
  }
}
