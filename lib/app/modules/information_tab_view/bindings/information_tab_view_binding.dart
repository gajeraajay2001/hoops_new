import 'package:get/get.dart';

import '../controllers/information_tab_view_controller.dart';

class InformationTabViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformationTabViewController>(
      () => InformationTabViewController(),
    );
  }
}
