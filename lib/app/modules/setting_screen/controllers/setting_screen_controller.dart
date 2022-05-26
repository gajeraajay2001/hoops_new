import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreenController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  final selectedIndex = 0.obs;
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
