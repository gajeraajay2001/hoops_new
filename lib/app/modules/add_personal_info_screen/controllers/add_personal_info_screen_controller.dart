import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/customeDialogs.dart';
import 'package:hoops_new_26_05/app/model/profile_model.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../../../../constant/sizeConstant.dart';
import '../../../../main.dart';

class AddPersonalInfoScreenController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController playingStyle1Controller = TextEditingController();
  TextEditingController playingStyle2Controller = TextEditingController();
  TextEditingController playingStyle3Controller = TextEditingController();
  TextEditingController favTeamController = TextEditingController();
  TextEditingController favPlayerController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();
  RxString base64Image = "".obs;

  @override
  void onInit() {
    if (Get.arguments != null) {
      print(Get.arguments[ArgumentConstant.userName]);
      nameController.text = Get.arguments[ArgumentConstant.userName];
      base64Image.value = Get.arguments[ArgumentConstant.base64Image];
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  addProfileToFirebase({required BuildContext context}) {
    app.resolve<CustomDialogs>().showCircularDialog(context);
    firebaseFirestore.collection(box.read(ArgumentConstant.userId)).add({
      "name": getValue(text: nameController.text),
      "dob": getValue(text: dobController.text),
      "height": getValue(text: heightController.text),
      "city": getValue(text: cityController.text),
      "playingStyle1": getValue(text: playingStyle1Controller.text),
      "playingStyle2": getValue(text: playingStyle2Controller.text),
      "playingStyle3": getValue(text: playingStyle3Controller.text),
      "favTeam": getValue(text: favTeamController.text),
      "favPlayer": getValue(text: favPlayerController.text),
      "image": getValue(text: base64Image.value),
      "aboutMe": getValue(text: aboutMeController.text),
    }).then((value) async {
      app.resolve<CustomDialogs>().hideCircularDialog(context);
      QuerySnapshot querySnapshot = await firebaseFirestore
          .collection(box.read(ArgumentConstant.userId))
          .get();
      List allData = querySnapshot.docs.map((doc) => doc.data()).toList();
      ProfileModel profileModel = ProfileModel.fromMap(data: allData[0]);
      print(profileModel.image);
      box.write(ArgumentConstant.userName, profileModel.name);
      box.write(ArgumentConstant.getBase64Image, profileModel.image);
      print("Data Added ============>");
      Get.offAllNamed(Routes.ALLOW_LOCATION_SCREEN);
    }).catchError((error) {
      app.resolve<CustomDialogs>().hideCircularDialog(context);
      print("Error := $error");
    });
  }
}

String getValue({required String text}) {
  return (isNullEmptyOrFalse(text)) ? "NA" : text;
}
