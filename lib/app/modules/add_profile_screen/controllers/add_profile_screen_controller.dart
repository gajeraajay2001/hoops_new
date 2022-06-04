import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProfileScreenController extends GetxController {
  TextEditingController nameController = TextEditingController();
  Rx<File>? selectedImageFile;
  RxBool isImageSelected = false.obs;
  final ImagePicker imagePicker = ImagePicker();
  RxString base64Image = "".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
