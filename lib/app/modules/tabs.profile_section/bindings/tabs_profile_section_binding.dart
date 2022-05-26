import 'package:get/get.dart';

import '../controllers/tabs_profile_section_controller.dart';

class TabsProfileSectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsProfileSectionController>(
      () => TabsProfileSectionController(),
    );
  }
}
