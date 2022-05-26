import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';

import '../controllers/notification_screen_controller.dart';

class NotificationScreenView extends GetView<NotificationScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Notifications',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              SizedBox(height: getSize(20, context)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: getSize(20, context)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/user02.jpg"),
                      radius: getSize(30, context),
                    ),
                    SizedBox(width: getSize(15, context)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Test",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "8 min ago",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: getFontSize(13, context)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: 50,
                indent: 10,
              ),
              SizedBox(height: getSize(10, context)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: getSize(20, context)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/user02.jpg"),
                      radius: getSize(30, context),
                    ),
                    SizedBox(width: getSize(15, context)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Test",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "8 min ago",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: getFontSize(13, context)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: 50,
                indent: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
