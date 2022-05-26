import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import 'math_utils.dart';

Container submitButton({
  required BuildContext context,
  required String title,
  double fontSize = 20,
  Color backColor = const Color(0xffB25927),
  Color textColor = Colors.white,
  double buttonHeight = 50,
}) {
  return Container(
    decoration: BoxDecoration(
      color: backColor,
      borderRadius: BorderRadius.circular(5),
    ),
    alignment: Alignment.center,
    height: getSize(buttonHeight, context),
    width: Get.width,
    child: Text(
      title,
      style:
          TextStyle(color: textColor, fontSize: getFontSize(fontSize, context)),
    ),
  );
}
