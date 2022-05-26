import 'package:get/get.dart';

import '../controllers/add_personal_info_screen_controller.dart';

class AddPersonalInfoScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPersonalInfoScreenController>(
      () => AddPersonalInfoScreenController(),
    );
  }
}
