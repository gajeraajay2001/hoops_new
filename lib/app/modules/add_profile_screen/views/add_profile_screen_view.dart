import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/app_text_fields.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/Utilities/utilities.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';
import 'package:hoops_new_26_05/constant/sizeConstant.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/add_profile_screen_controller.dart';

class AddProfileScreenView extends GetWidget<AddProfileScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() {
          return Container(
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
                  child: InkWell(
                    onTap: () async {
                      final XFile? image = await controller.imagePicker
                          .pickImage(source: ImageSource.gallery);
                      if (!isNullEmptyOrFalse(image)) {
                        File file = File(image!.path);
                        List<int> imageBytes = file.readAsBytesSync();
                        final bytes = file.readAsBytesSync().lengthInBytes;
                        final kb = bytes / 1024;
                        final mb = kb / 1024;
                        print("MB : = == = = =  $mb");
                        if (mb < 1) {
                          controller.selectedImageFile = file.obs;
                          controller.isImageSelected.value = true;
                          controller.base64Image.value =
                              base64Encode(imageBytes);

                          controller.selectedImageFile!.refresh();
                        } else {
                          FocusScope.of(context).unfocus();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                "Please select image size less then 1 Mb."),
                            duration: Duration(milliseconds: 500),
                          ));
                        }
                      }
                    },
                    child: SizedBox(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                                MySize.getScaledSizeHeight(11000)),
                            child: (controller.isImageSelected.value)
                                ? Container(
                                    height: getSize(110, context),
                                    width: getSize(110, context),
                                    child: Image.file(
                                      controller.selectedImageFile!.value,
                                      fit: BoxFit.cover,
                                    ))
                                : Container(
                                    height: getSize(110, context),
                                    width: getSize(110, context),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/round.png")),
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: Colors.grey.shade400,
                                          width: 2),
                                    ),
                                  ),
                          ),
                          if (!controller.isImageSelected.value)
                            Positioned(
                                left: getSize(80, context),
                                child: SvgPicture.asset("assets/addIcon.svg")),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getSize(10, context)),
                if (!controller.isImageSelected.value)
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Add Profile Image",
                      style: TextStyle(fontSize: getFontSize(15, context)),
                    ),
                  ),
                Spacer(flex: 2),
                appTextField(
                    hintText: "Choose Username*",
                    controller: controller.nameController),
                Spacer(flex: 7),
                InkWell(
                  onTap: () {
                    if (isNullEmptyOrFalse(controller.base64Image.value)) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please Select Profile."),
                        duration: Duration(milliseconds: 500),
                      ));
                    } else if (isNullEmptyOrFalse(
                        controller.nameController.text)) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please Enter Name."),
                        duration: Duration(milliseconds: 500),
                      ));
                    } else {
                      Get.toNamed(Routes.ADD_PERSONAL_INFO_SCREEN, arguments: {
                        ArgumentConstant.userName:
                            controller.nameController.text.trim(),
                        ArgumentConstant.base64Image:
                            controller.base64Image.value
                      });
                    }
                  },
                  child: submitButton(
                    context: context,
                    title: "Continue",
                  ),
                ),
                SizedBox(height: getSize(30, context)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
