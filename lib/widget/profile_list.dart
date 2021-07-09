import 'package:flutter/material.dart';
import 'package:responsive_ui_practice/extras/extension.dart';
import 'package:responsive_ui_practice/ui/responsive_ui_helper.dart';

class ProfileListItem extends StatelessWidget {
  final Map<String, dynamic> listItem;
  final Function onClick;

  ProfileListItem(this.listItem, this.onClick);
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        mobile: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Color(0XFFFAFAFA),
            elevation: 4,
            child: Material(
              clipBehavior: Clip.antiAlias,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: () => onClick(listItem),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      Icon(
                        listItem["image"],
                        size: mediaQueryHeight(context) * 0.05,
                      ),
                      (mediaQueryWidth(context) * 0.05).addWSpace(),
                      Text(
                        listItem["name"],
                        style: TextStyle(
                            fontSize: mediaQueryHeight(context) * 0.05),
                      ),
                      Spacer(),
                      Visibility(child: Icon(Icons.arrow_forward))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        tab: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Color(0XFFFAFAFA),
            elevation: 4,
            child: Material(
              clipBehavior: Clip.antiAlias,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: () => onClick(listItem),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      Icon(
                        listItem["image"],
                        size: mediaQueryHeight(context) * 0.01,
                      ),
                      (mediaQueryWidth(context) * 0.05).addWSpace(),
                      Text(
                        listItem["name"],
                        style: TextStyle(
                            fontSize: mediaQueryHeight(context) * 0.01),
                      ),
                      Spacer(),
                      Visibility(child: Icon(Icons.arrow_forward))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
