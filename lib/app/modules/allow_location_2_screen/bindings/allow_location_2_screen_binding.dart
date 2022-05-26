import 'package:get/get.dart';

import '../controllers/allow_location_2_screen_controller.dart';

class AllowLocation2ScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllowLocation2ScreenController>(
      () => AllowLocation2ScreenController(),
    );
  }
}
