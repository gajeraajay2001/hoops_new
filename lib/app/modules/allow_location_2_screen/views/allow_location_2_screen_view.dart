import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/Utilities/utilities.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/allow_location_2_screen_controller.dart';

class AllowLocation2ScreenView extends GetView<AllowLocation2ScreenController> {
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
                  image: AssetImage("assets/basketPhoto.png"),
                  height: getSize(300, context),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "You miss all the shots\nyou don't take.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getFontSize(30, context)),
                ),
              ),
              Spacer(flex: 1),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "In order to use Hoops Basketball you\nneed to enable your location.",
                  style: TextStyle(fontSize: getFontSize(18, context)),
                ),
              ),
              SizedBox(height: getSize(20, context)),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Go to Settings > Hoops > Location >\nEnable Location While Using the App",
                  style: TextStyle(fontSize: getFontSize(18, context)),
                ),
              ),
              Spacer(flex: 3),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.HOME_SCREEN);
                  },
                  child:
                      submitButton(context: context, title: "Open Settings")),
              SizedBox(height: getSize(30, context)),
            ],
          ),
        ),
      ),
    );
  }
}
