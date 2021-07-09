import 'package:flutter/material.dart';
import 'package:responsive_ui_practice/extras/extension.dart';
import 'package:responsive_ui_practice/ui/Setting.dart';
import 'package:responsive_ui_practice/ui/call.dart';
import 'package:responsive_ui_practice/ui/home.dart';
import 'package:responsive_ui_practice/ui/list.dart';
import 'package:responsive_ui_practice/ui/responsive_ui_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
    BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
  ];
  bool first = true;
  bool list = false;
  bool call = false;
  bool setting = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ResponsiveWidget(
          mobile: Scaffold(
            appBar: AppBar(
              title: Text("Responsive UI"),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              backgroundColor: Colors.teal,
              type: BottomNavigationBarType.fixed,
              items: items,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            body: tabs[currentIndex],
          ),
          tab:  Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //for drawer
                Expanded(
                  child: SafeArea(
                    child: Drawer(
                      elevation: 0,
                      child: Container(
                        width: mediaQueryWidth(context) * 0.2,
                        color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: mediaQueryHeight(context) * 0.1,
                              width: mediaQueryWidth(context),
                              color: Colors.yellow,
                              child: Center(
                                  child: Text(
                                    "Responsive UI",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w500),
                                  )),
                            ),
                            ListTile(
                              onTap: () {
                                setState(() {
                                  list = false;
                                  call = false;
                                  setting = false;
                                  first = true;
                                  print(first);
                                });
                              },
                              selected: first,
                              leading: Icon(Icons.home,size: mediaQueryWidth(context)*0.02,),
                              title: Text('Home',style: TextStyle(fontSize:mediaQueryWidth(context)*0.02)),
                            ),
                            ListTile(
                              onTap: () {
                                setState(() {
                                  call = false;
                                  setting = false;
                                  first = false;
                                  list = true;
                                  // isSelected == true ? isSelected = false : isSelected =true;
                                });
                              },
                              selected: list,
                              leading: Icon(Icons.list,size: mediaQueryWidth(context)*0.02,),
                              title: Text('List',style: TextStyle(fontSize: mediaQueryWidth(context)*0.02,)),
                            ),
                            ListTile(
                              onTap: () {
                                setState(() {
                                  setting = false;
                                  first = false;
                                  list = false;
                                  call = true;
                                  // isSelected == true ? isSelected = false : isSelected =true;
                                });
                              },
                              selected: call,
                              leading: Icon(Icons.call,size: mediaQueryWidth(context)*0.02,),
                              title: Text('Call',style: TextStyle(fontSize: mediaQueryWidth(context)*0.02,)),
                            ),
                            ListTile(
                              onTap: () {
                                setState(() {
                                  call = false;
                                  first = false;
                                  list = false;
                                  setting = true;
                                  // isSelected == true ? isSelected = false : isSelected =true;
                                });
                              },
                              selected: setting,
                              leading: Icon(Icons.settings,size: mediaQueryWidth(context)*0.02,),
                              title:  Text('Setting',style: TextStyle(fontSize: mediaQueryWidth(context)*0.02,),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //for body
                Expanded(
                  flex: 3,
                  child:  call ? Calls() : list ? NumberList() :setting? Setting() : Home(),
                ),
              ],
            ),
          ),
        ),);

  }

  var tabs = [
    Home(),
    NumberList(),
    Calls(),
    Setting(),
  ];
}
