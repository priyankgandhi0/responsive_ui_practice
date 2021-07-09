import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
    LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if ((constraints.maxWidth < 768)) {
        return ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Card(
              child: Text('Number $index'),
            );
          },);
      } else{
        return ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Container(
              // height: med,
              child: Card(

                child: Text('Number $index'),
              ),
            );
          },);
      }
    },

    ));
  }
}
