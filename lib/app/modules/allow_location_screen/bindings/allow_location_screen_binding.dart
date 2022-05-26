import 'package:get/get.dart';

import '../controllers/allow_location_screen_controller.dart';

class AllowLocationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllowLocationScreenController>(
      () => AllowLocationScreenController(),
    );
  }
}
