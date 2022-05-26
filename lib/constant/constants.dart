import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ColorConstant {
  static Color primaryTheme = Color(0xffB25927);
}

class ArgumentConstant {
  static String token = "token";
  static String mobileNumber = "mobileNumber";
}

Rx<PageController> pageController = PageController().obs;
