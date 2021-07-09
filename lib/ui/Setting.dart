import 'package:flutter/material.dart';
import 'package:responsive_ui_practice/extras/extension.dart';
import 'package:responsive_ui_practice/ui/responsive_ui_helper.dart';
import '../widget/profile_list.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _showProgress = false;

  final List<Map<String, dynamic>> list = [
    {
      "index": 1,
      "name": "Edit Profile",
      "image": Icons.account_circle_outlined,
      "isArrowVisible": true,
    },
    {
      "index": 2,
      "name": "Password",
      "image": Icons.vpn_key,
      "isArrowVisible": true,
    },
    {
      "index": 3,
      "name": "Contact Us",
      "image": Icons.call,
      "isArrowVisible": false,
    },
    {
      "index": 4,
      "name": "About App",
      "image": Icons.app_blocking,
      "isArrowVisible": false,
    },
    {
      "index": 5,
      "name": "Logout",
      "image": Icons.logout,
      "isArrowVisible": false,
    },
  ];

  _onItemClick(Map<String, dynamic> listItem) {
    print(listItem["name"]);
    switch (listItem["index"] as int) {
      case 1:
        showgetbar(listItem["name"]);
        break;
      case 2:
        showgetbar(listItem["name"]);
        break;
      case 5:
        showgetbar(listItem["name"]);
        break;
      default:
        showgetbar(listItem["name"]);
        break;
    }
  }

  _setData() {
    setState(() {
      print("set data");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    ResponsiveWidget(
        mobile: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  (mediaQueryHeight(context) * 0.03).addHSpace(),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) =>
                          ProfileListItem(list[index], _onItemClick),
                      itemCount: list.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        tab: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  (mediaQueryHeight(context) * 0.03).addHSpace(),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) =>
                          ProfileListItem(list[index], _onItemClick),
                      itemCount: list.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),


    ));
  }
}
