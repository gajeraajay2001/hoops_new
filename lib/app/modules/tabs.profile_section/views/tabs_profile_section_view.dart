import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/tabs_profile_section_controller.dart';

class TabsProfileSectionView extends GetWidget<TabsProfileSectionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: getSize(200, context),
        leading: Center(
          child: Text(
            "My Profile",
            style: TextStyle(
              fontSize: getFontSize(22, context),
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          SvgPicture.asset("assets/shareIcon.svg"),
          SizedBox(width: getSize(10, context)),
          InkWell(
              onTap: () {
                Get.toNamed(Routes.SETTING_SCREEN);
              },
              child: SvgPicture.asset("assets/settingIcon.svg")),
          SizedBox(width: getSize(20, context)),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getSize(20, context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: getSize(85, context),
                    width: getSize(80, context),
                    child: Stack(
                      children: [
                        Container(
                          height: getSize(80, context),
                          width: getSize(80, context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage("assets/user01.jpg"),
                            ),
                          ),
                        ),
                        Positioned(
                          child: SvgPicture.asset(
                            "assets/addIcon.svg",
                            width: getSize(25, context),
                          ),
                          bottom: getSize(1, context),
                          right: getSize(1, context),
                        ),
                      ],
                    ),
                  ),
                  getColumn(context: context, text1: "259", text2: "Rank"),
                  getColumn(context: context, text1: "560", text2: "Points"),
                  getColumn(context: context, text1: "129", text2: "Games"),
                  SizedBox(width: getSize(5, context)),
                ],
              ),
              SizedBox(height: getSize(10, context)),
              Row(
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(
                        fontSize: getFontSize(
                          20,
                          context,
                        ),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: getSize(25, context)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getSize(15, context),
                        vertical: getSize(5, context)),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(
                        getSize(5, context),
                      ),
                    ),
                    child: Text("San Jose, CA"),
                  ),
                ],
              ),
              SizedBox(height: getSize(10, context)),
              Text(
                "Warriors for life- my friends tell me I shoot like Steph. Come play with us at the gym after school. Usually run full court 5s- you got what it takes?",
                style: TextStyle(fontSize: getFontSize(15, context)),
              ),
              SizedBox(height: getSize(25, context)),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: getSize(50, context),
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryTheme,
                        borderRadius: BorderRadius.circular(
                          getSize(5, context),
                        ),
                      ),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: getSize(10, context)),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: getSize(50, context),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          getSize(5, context),
                        ),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "Games History",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getSize(30, context)),
              Text(
                "Basics",
                style: TextStyle(),
              ),
              SizedBox(height: getSize(5, context)),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: getCard(
                          context: context, text1: "Height", text2: "6\" 2'")),
                  Expanded(
                    flex: 3,
                    child: getCard(
                        context: context, text1: "Age", text2: "23 YEARS"),
                  ),
                  Expanded(
                      flex: 4,
                      child: getCard(
                          context: context,
                          text1: "Playing Style",
                          text2: "POINT GUARD")),
                ],
              ),
              SizedBox(height: getSize(20, context)),
              Row(
                children: [
                  Expanded(
                      child: getCard2(
                          context: context,
                          text1: "Golden State\nWarriors",
                          text2: "Favourite Team",
                          img: "assets/image1.png")),
                  Expanded(
                      child: getCard2(
                          context: context,
                          text1: "Michale Jorden\n",
                          text2: "Favourite Player",
                          img: "assets/image2.png")),
                ],
              ),
              SizedBox(height: getSize(10, context)),
              Text(" My Courts"),
              SizedBox(height: getSize(10, context)),
              Card(
                child: Container(
                  height: getSize(120, context),
                  padding: EdgeInsets.symmetric(
                      horizontal: getSize(10, context),
                      vertical: getSize(10, context)),
                  child: Row(
                    children: [
                      Container(
                        height: getSize(100, context),
                        width: getSize(100, context),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(getSize(5, context)),
                            image: DecorationImage(
                                image: AssetImage("assets/image2.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: getSize(10, context)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Avera Basketball Center",
                            style:
                                TextStyle(fontSize: getFontSize(20, context)),
                          ),
                          SizedBox(height: getSize(10, context)),
                          Text(
                            "Sioux Falls, SD",
                            style:
                                TextStyle(fontSize: getFontSize(15, context)),
                          ),
                          Spacer(),
                          Align(
                            child: Row(
                              children: [
                                SizedBox(width: getSize(50, context)),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(" 3.5  "),
                                Text(
                                  "(109 Ratings)",
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: getSize(120, context),
                  padding: EdgeInsets.symmetric(
                      horizontal: getSize(10, context),
                      vertical: getSize(10, context)),
                  child: Row(
                    children: [
                      Container(
                        height: getSize(100, context),
                        width: getSize(100, context),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(getSize(5, context)),
                            image: DecorationImage(
                                image: AssetImage("assets/image2.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: getSize(10, context)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Avera Basketball Center",
                            style:
                                TextStyle(fontSize: getFontSize(20, context)),
                          ),
                          SizedBox(height: getSize(10, context)),
                          Text(
                            "Sioux Falls, SD",
                            style:
                                TextStyle(fontSize: getFontSize(15, context)),
                          ),
                          Spacer(),
                          Align(
                            child: Row(
                              children: [
                                SizedBox(width: getSize(50, context)),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(" 3.5  "),
                                Text(
                                  "(109 Ratings)",
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getCard2(
      {required BuildContext context,
      required String text1,
      required String text2,
      required String img}) {
    return Card(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: getSize(10, context), horizontal: getSize(10, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getSize(5, context)),
                  image: DecorationImage(image: AssetImage(img))),
              height: getSize(60, context),
              width: getSize(60, context),
            ),
            SizedBox(height: getSize(15, context)),
            Text(text1),
            SizedBox(height: getSize(20, context)),
            Padding(
              padding: EdgeInsets.only(
                left: getSize(10, context),
              ),
              child: Text(
                text2,
                style: TextStyle(color: Colors.grey.shade300),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getCard(
      {required BuildContext context,
      required String text1,
      required String text2}) {
    return Card(
      elevation: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getFontSize(20, context),
                  color: Colors.grey.shade400),
            ),
            Text(
              text2,
              style: TextStyle(
                  fontSize: getFontSize(17, context), color: Colors.black),
            ),
          ],
        ),
        alignment: Alignment.center,
        height: getSize(80, context),
      ),
    );
  }

  getColumn(
      {required BuildContext context,
      required String text1,
      required String text2}) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: getFontSize(20, context)),
        ),
        SizedBox(height: getSize(5, context)),
        Text(
          text2,
          style: TextStyle(
              fontWeight: FontWeight.w300, fontSize: getFontSize(18, context)),
        ),
      ],
    );
  }
}
