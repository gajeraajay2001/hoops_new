import 'package:get/get.dart';

import '../controllers/tabs_record_game_controller.dart';

class TabsRecordGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsRecordGameController>(
      () => TabsRecordGameController(),
    );
  }
}
