import 'package:get/get.dart';
import 'package:hoops_new_26_05/constant/constants.dart';
import 'package:hoops_new_26_05/constant/sizeConstant.dart';

import '../../../../../main.dart';

class HomeTabController extends GetxController {
  RxString imageFromFirebase = "".obs;

  @override
  void onInit() {
    if (!isNullEmptyOrFalse(box.read(ArgumentConstant.getBase64Image))) {
      imageFromFirebase.value = box.read(ArgumentConstant.getBase64Image);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
