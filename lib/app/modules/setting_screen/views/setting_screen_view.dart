import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/app/modules/information_tab_view/views/information_tab_view_view.dart';
import 'package:hoops_new_26_05/app/modules/privacy_tab_view/views/privacy_tab_view_view.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/setting_screen_controller.dart';

class SettingScreenView extends GetWidget<SettingScreenController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: Text(
              "Settings",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            bottom: TabBar(
              indicatorColor: ColorConstant.primaryTheme,
              onTap: (int index) {
                controller.selectedIndex.value = index;
              },
              tabs: [
                Tab(
                  child: Text(
                    "Background",
                    style: TextStyle(
                        color: (controller.selectedIndex.value == 0)
                            ? ColorConstant.primaryTheme
                            : Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Privacy",
                    style: TextStyle(
                        color: (controller.selectedIndex.value == 1)
                            ? ColorConstant.primaryTheme
                            : Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Information",
                    style: TextStyle(
                        color: (controller.selectedIndex.value == 2)
                            ? ColorConstant.primaryTheme
                            : Colors.black),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SizedBox(),
              PrivacyTabViewView(),
              InformationTabViewView(),
            ],
          ),
        ),
      );
    });
  }
}
