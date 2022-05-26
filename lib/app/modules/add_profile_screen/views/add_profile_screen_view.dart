import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/app_text_fields.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/Utilities/utilities.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';

import '../controllers/add_profile_screen_controller.dart';

class AddProfileScreenView extends GetView<AddProfileScreenController> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: getSize(20, context)),
              Text("Welcome to",
                  style: TextStyle(
                      fontSize: getFontSize(28, context),
                      fontWeight: FontWeight.w300)),
              SizedBox(height: getSize(10, context)),
              SvgPicture.asset("assets/hoops.svg"),
              SizedBox(height: getSize(10, context)),
              SvgPicture.asset("assets/basketball.svg"),
              Spacer(flex: 3),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        height: getSize(110, context),
                        width: getSize(110, context),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/round.png")),
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: Colors.grey.shade400, width: 2),
                        ),
                      ),
                      Positioned(
                          left: getSize(80, context),
                          child: SvgPicture.asset("assets/addIcon.svg")),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getSize(10, context)),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Add Profile Image",
                  style: TextStyle(fontSize: getFontSize(15, context)),
                ),
              ),
              Spacer(flex: 2),
              appTextField(hintText: "Choose Username*"),
              Spacer(flex: 7),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.ADD_PERSONAL_INFO_SCREEN);
                },
                child: submitButton(
                  context: context,
                  title: "Continue",
                ),
              ),
              SizedBox(height: getSize(30, context)),
            ],
          ),
        ),
      ),
    );
  }
}
