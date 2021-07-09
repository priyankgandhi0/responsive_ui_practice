import 'package:flutter/material.dart';
import 'package:responsive_ui_practice/extras/extension.dart';

class NumberList extends StatelessWidget {
  const NumberList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if ((constraints.maxWidth < 768)) {
        return ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Container(
              height: mediaQueryHeight(context) * 0.1,
              child: Card(
                child: Text('Number $index',style: TextStyle(fontSize: 20),),
              ),
            );
          },);
      } else{
        return ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Container(
              height: mediaQueryHeight(context) * 0.1,
              child: Card(

                child: Text('Number $index',style: TextStyle(fontSize: 30)),
              ),
            );
          },);
      }
    },

    ));
  }
}
