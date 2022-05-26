import 'package:get/get.dart';

import '../controllers/privacy_tab_view_controller.dart';

class PrivacyTabViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivacyTabViewController>(
      () => PrivacyTabViewController(),
    );
  }
}
