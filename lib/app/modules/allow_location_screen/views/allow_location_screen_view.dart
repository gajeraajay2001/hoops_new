import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/Utilities/utilities.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/allow_location_screen_controller.dart';

class AllowLocationScreenView extends GetView<AllowLocationScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getSize(20, context)),
              Row(
                children: [
                  Text("Welcome to",
                      style: TextStyle(
                          fontSize: getFontSize(28, context),
                          fontWeight: FontWeight.w300)),
                  Spacer(),
                ],
              ),
              SizedBox(height: getSize(10, context)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset("assets/hoops.svg")),
              SizedBox(height: getSize(10, context)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset("assets/basketball.svg")),
              SizedBox(height: getSize(0, context)),
              Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage("assets/table.png"),
                  height: getSize(300, context),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Find the best spots\n to play pickup.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getFontSize(30, context)),
                ),
              ),
              Spacer(flex: 1),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Your location will be used to show\ncourts near you and to record games\nfor the leaderboard.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getFontSize(20, context)),
                ),
              ),
              Spacer(flex: 3),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: getFontSize(16, context),
                      color: ColorConstant.primaryTheme),
                ),
              ),
              Spacer(flex: 1),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.ALLOW_LOCATION_2_SCREEN);
                  },
                  child:
                      submitButton(context: context, title: "Allow Location")),
              SizedBox(height: getSize(30, context)),
            ],
          ),
        ),
      ),
    );
  }
}
