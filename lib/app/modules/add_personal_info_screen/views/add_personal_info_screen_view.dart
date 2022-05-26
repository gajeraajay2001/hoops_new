import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/app_text_fields.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/Utilities/utilities.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/add_personal_info_screen_controller.dart';

class AddPersonalInfoScreenView
    extends GetView<AddPersonalInfoScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
          child: ListView(
            children: [
              SizedBox(height: getSize(20, context)),
              Row(
                children: [
                  Text("Welcome to",
                      style: TextStyle(
                          fontSize: getFontSize(28, context),
                          fontWeight: FontWeight.w300)),
                  Spacer(),
                  Text("SKIP FOR NOW",
                      style: TextStyle(
                          fontSize: getFontSize(16, context),
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.primaryTheme)),
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
              SizedBox(height: getSize(35, context)),
              appTextField(hintText: "Your Name*"),
              SizedBox(height: getSize(10, context)),
              appTextField(hintText: "Date Of Birth*"),
              SizedBox(height: getSize(10, context)),
              appTextField(hintText: "Height*"),
              SizedBox(height: getSize(10, context)),
              appTextField(
                hintText: "Search Your City*",
                suffixIcon: Icon(
                  Icons.gps_fixed,
                  size: getSize(35, context),
                  color: ColorConstant.primaryTheme,
                ),
              ),
              SizedBox(height: getSize(5, context)),
              Text(
                "This will be used as your hometown in your profile.",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: getFontSize(14, context)),
              ),
              SizedBox(height: getSize(5, context)),
              appTextField(
                hintText: "Playing Style (Primary)*",
                suffixIcon: Icon(
                  Icons.expand_more,
                  size: getSize(40, context),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: getSize(10, context)),
              appTextField(
                hintText: "Playing Style (Secondary)*",
                suffixIcon: Icon(
                  Icons.expand_more,
                  size: getSize(40, context),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: getSize(10, context)),
              appTextField(
                hintText: "Playing Style (Secondary)",
              ),
              SizedBox(height: getSize(10, context)),
              appTextField(
                hintText: "Favourite Basketball Team",
              ),
              SizedBox(height: getSize(10, context)),
              appTextField(
                hintText: "Favourite Basketball Player",
              ),
              SizedBox(height: getSize(10, context)),
              appTextField(hintText: "About Me", maxLine: 4),
              SizedBox(height: getSize(50, context)),
              InkWell(
                  onTap: () {
                    Get.toNamed(Routes.ALLOW_LOCATION_SCREEN);
                  },
                  child: submitButton(context: context, title: "Done")),
              SizedBox(height: getSize(30, context)),
            ],
          ),
        ),
      ),
    );
  }
}
