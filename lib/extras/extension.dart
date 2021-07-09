




import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension space on double {
  addHSpace() {
    return SizedBox(
      height: this,
    );
  }

  addWSpace() {
    return SizedBox(
      width: this,
    );
  }
}
showgetbar(String tittle){
  return Get.showSnackbar(GetBar(message: tittle,duration: Duration(seconds: 3),));
}


double mediaQueryWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double mediaQueryHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

