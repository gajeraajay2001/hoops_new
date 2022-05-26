import 'package:get/get.dart';

import '../controllers/add_profile_screen_controller.dart';

class AddProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddProfileScreenController>(
      () => AddProfileScreenController(),
    );
  }
}
