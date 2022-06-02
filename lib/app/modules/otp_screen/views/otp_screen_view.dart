import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/app/model/profile_model.dart';
import 'package:hoops_new_26_05/constant/constants.dart';
import 'package:hoops_new_26_05/constant/sizeConstant.dart';
import 'package:hoops_new_26_05/main.dart';
import 'package:pinput/pin_put/pin_put.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_screen_controller.dart';

class OtpScreenView extends GetWidget<OtpScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     // colorFilter: ColorFilter.mode(
                  //     //     Colors.black.withOpacity(0.9), BlendMode.dstATop),
                  //     image: AssetImage("assets/backPhoto.jpg"),
                  //     fit: BoxFit.cover),
                  ),
              child: Image(
                  image: AssetImage("assets/backPhoto.jpg"), fit: BoxFit.cover),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     // colorFilter: ColorFilter.mode(
                  //     //     Colors.black.withOpacity(0.9), BlendMode.dstATop),
                  //     image: AssetImage("assets/backPhoto.jpg"),
                  //     fit: BoxFit.cover),
                  ),
              child: SingleChildScrollView(
                child: Container(
                  width: Get.width,
                  height: Get.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: getSize(100, context)),
                      Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset("assets/hoopsLogo.svg")),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Verification",
                        style: TextStyle(
                            fontSize: getFontSize(30, context),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getSize(10, context)),
                      Text(
                        "Code sent to ${box.read(ArgumentConstant.mobileNumber)}",
                        style: TextStyle(
                            fontSize: getFontSize(15, context),
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getSize(15, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              width: MySize.getScaledSizeWidth(310),
                              alignment: Alignment.center,
                              child: PinPut(
                                fieldsCount: 6,
                                eachFieldWidth: MySize.getScaledSizeWidth(46),
                                eachFieldHeight: MySize.getScaledSizeHeight(50),
                                // eachFieldMargin:
                                //     EdgeInsets.only(right: MySize.getScaledSizeWidth(13)),
                                onSubmit: (String pin) => {},
                                focusNode: controller.pinPutFocusNode,
                                controller: controller.pinPutController,
                                submittedFieldDecoration:
                                    controller.pinPutDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                textStyle: const TextStyle(color: Colors.white),
                                selectedFieldDecoration:
                                    controller.pinPutDecoration,
                                followingFieldDecoration:
                                    controller.pinPutDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                    width: MySize.getScaledSizeHeight(2),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: getSize(30, context)),

                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: Text(
                      //     "Resend Code",
                      //     style: TextStyle(
                      //         fontSize: getFontSize(18, context),
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      InkWell(
                        onTap: () async {
                          await FirebaseAuth.instance
                              .signInWithCredential(
                                  PhoneAuthProvider.credential(
                                      verificationId: controller.verificationId,
                                      smsCode: controller
                                          .pinPutController.value.text))
                              .then((value) async {
                            var user = await FirebaseAuth.instance.currentUser!;
                            final idToken = await user.getIdToken();
                            final token = idToken;
                            print(token);
                            if (!isNullEmptyOrFalse(token)) {
                              box.write(ArgumentConstant.token, token);
                              box.write(ArgumentConstant.userId, user.uid);
                              QuerySnapshot querySnapshot = await controller
                                  .firebaseFirestore
                                  .collection(box.read(ArgumentConstant.userId))
                                  .get();
                              List allData = querySnapshot.docs
                                  .map((doc) => doc.data())
                                  .toList();

                              if (isNullEmptyOrFalse(allData)) {
                                Get.offAllNamed(Routes.ADD_PROFILE_SCREEN);
                              } else {
                                ProfileModel profileModel =
                                    ProfileModel.fromMap(data: allData[0]);

                                Get.offAllNamed(Routes.ALLOW_LOCATION_SCREEN);
                              }
                            }
                            print(value);
                          }).catchError((e) {
                            print(e.toString());
                            Get.snackbar(
                                "Invalid OTP", "Please provide right OTP",
                                colorText: Colors.white,
                                backgroundColor: Colors.redAccent,
                                borderRadius: 0,
                                snackPosition: SnackPosition.BOTTOM,
                                margin: EdgeInsets.zero);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.center,
                          height: getSize(50, context),
                          width: Get.width,
                          child: Text(
                            "Verify",
                            style: TextStyle(
                                color: ColorConstant.primaryTheme,
                                fontSize: getFontSize(20, context)),
                          ),
                        ),
                      ),
                      SizedBox(height: MySize.getScaledSizeHeight(20)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
