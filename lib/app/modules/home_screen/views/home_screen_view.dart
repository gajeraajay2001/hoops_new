import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/app/modules/tabs.profile_section/views/tabs_profile_section_view.dart';
import 'package:hoops_new_26_05/app/modules/tabs.record_game/views/tabs_record_game_view.dart';
import 'package:hoops_new_26_05/app/modules/tabs/home_tab/views/home_tab_view.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetWidget<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () {
            return AnimatedBottomNavigationBar.builder(
                itemCount: 4,
                tabBuilder: (index, isActive) {
                  return Padding(
                    padding: EdgeInsets.only(
                        top: getSize(18, context),
                        bottom: getSize(18, context)),
                    child: (index == 0)
                        ? SvgPicture.asset(
                            "assets/homeIcon.svg",
                            color: (isActive)
                                ? ColorConstant.primaryTheme
                                : Colors.black,
                            height: getSize(20, context),
                          )
                        : (index == 1)
                            ? Image(
                                image: AssetImage("assets/locationIcon2.png"),
                                color: (isActive)
                                    ? ColorConstant.primaryTheme
                                    : Colors.black,
                                height: getSize(10, context),
                                width: getSize(10, context),
                              )
                            : (index == 2)
                                ? Image(
                                    image: AssetImage("assets/ball2.png"),
                                    color: (isActive)
                                        ? ColorConstant.primaryTheme
                                        : Colors.black,
                                  )
                                : CircleAvatar(
                                    radius: getSize(20, context),
                                    backgroundImage:
                                        AssetImage("assets/homeBack3.png"),
                                  ),
                  );
                },
                splashColor: ColorConstant.primaryTheme,
                splashRadius: getSize(20, context),
                elevation: 0,
                gapLocation: GapLocation.none,
                notchSmoothness: NotchSmoothness.verySmoothEdge,
                activeIndex: controller.bottomIndex.value,
                onTap: (index) {
                  controller.bottomIndex.value = index;
                  pageController.value.jumpToPage(index);
                });
          },
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController.value,
          children: [
            HomeTabView(),
            SizedBox(),
            TabsRecordGameView(),
            TabsProfileSectionView(),
          ],
        ),
      ),
    );
  }
}
