import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ColorConstant {
  static Color primaryTheme = Color(0xffB25927);
}

class ArgumentConstant {
  static String token = "token";
  static String userId = "userId";
  static String mobileNumber = "mobileNumber";
  static String userName = "userName";
  static String base64Image = "base64Image";
  static String getBase64Image = "getBase64Image";
}

Rx<PageController> pageController = PageController().obs;
