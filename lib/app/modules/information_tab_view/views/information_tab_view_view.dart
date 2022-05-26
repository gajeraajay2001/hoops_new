import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/information_tab_view_controller.dart';

class InformationTabViewView extends GetView<InformationTabViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: getSize(10, context)),
        child: Column(
          children: [
            SizedBox(height: getSize(15, context)),
            getContainer(
                context: context,
                text: "FAQ",
                leadImage: "assets/askIcon.svg",
                size: getSize(26, context)),
            SizedBox(height: getSize(15, context)),
            getContainer(
                context: context,
                text: "Privacy Policy",
                leadImage: "assets/eyeIcon.svg",
                size: getSize(16, context)),
            SizedBox(height: getSize(15, context)),
            getContainer(
                context: context,
                text: "Term and Condition",
                leadImage: "assets/termIcon.svg",
                size: getSize(26, context)),
            SizedBox(height: getSize(15, context)),
            getContainer(
                context: context,
                text: "Share with your friends",
                leadImage: "assets/askIcon.svg",
                size: getSize(26, context)),
            SizedBox(height: getSize(15, context)),
            getContainer(
                context: context,
                text: "About Hoops Basketball",
                leadImage: "assets/askIcon.svg",
                size: getSize(26, context)),
          ],
        ),
      ),
    );
  }

  Container getContainer(
      {required BuildContext context,
      required leadImage,
      required String text,
      required double size}) {
    return Container(
      padding: EdgeInsets.all(getSize(10, context)),
      height: getSize(60, context),
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorConstant.primaryTheme.withOpacity(0.5),
            width: getSize(2, context)),
        borderRadius: BorderRadius.circular(
          getSize(5, context),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            leadImage,
            height: getSize(size, context),
          ),
          SizedBox(width: getSize(10, context)),
          Text(
            text,
            style: TextStyle(
                fontSize: getFontSize(20, context),
                fontWeight: FontWeight.w400),
          ),
          Spacer(),
          SvgPicture.asset(
            "assets/arrowIcon.svg",
            color: Colors.grey,
          ),
          SizedBox(width: getSize(10, context)),
        ],
      ),
    );
  }
}
