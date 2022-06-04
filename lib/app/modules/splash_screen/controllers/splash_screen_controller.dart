import 'dart:async';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';
import 'package:hoops_new_26_05/constant/sizeConstant.dart';

import '../../../../main.dart';

class SplashScreenController extends GetxController {
  String userId = "";
  @override
  void onInit() {
    if (box.read(ArgumentConstant.userName) != null) {
      userId = box.read(ArgumentConstant.userName);
    }
    Timer(
      Duration(seconds: 3),
      () => (!isNullEmptyOrFalse(userId))
          ? Get.offAllNamed(Routes.HOME_SCREEN)
          : Get.offAllNamed(Routes.LOGIN_SCREEN),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
