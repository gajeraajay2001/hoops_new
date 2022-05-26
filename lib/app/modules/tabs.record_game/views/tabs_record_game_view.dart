import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/app_text_fields.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/Utilities/utilities.dart';

import '../controllers/tabs_record_game_controller.dart';

class TabsRecordGameView extends GetWidget<TabsRecordGameController> {
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
              Text(
                "Record a Game",
                style: TextStyle(fontSize: getFontSize(22, context)),
              ),
              SizedBox(height: getSize(40, context)),
              appTextField(
                  hintText: "Location",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: getSize(40, context),
                  )),
              SizedBox(height: getSize(20, context)),
              appTextField(
                  readOnly: true,
                  hintText: "Types of Game",
                  suffixIcon: Icon(
                    Icons.keyboard_arrow_down,
                    size: getSize(40, context),
                  )),
              Spacer(),
              submitButton(context: context, title: "Continue"),
              SizedBox(height: getSize(10, context)),
            ],
          ),
        ),
      ),
    );
  }
}
