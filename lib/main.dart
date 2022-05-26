import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hoops_new_26_05/constant/app_module.dart';
import 'package:kiwi/kiwi.dart';

import 'app/routes/app_pages.dart';

initFireBaseApp() async {
  await Firebase.initializeApp();
}

late KiwiContainer app;
GetStorage box = GetStorage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFireBaseApp();
  await GetStorage.init();
  app = KiwiContainer();
  setup();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
