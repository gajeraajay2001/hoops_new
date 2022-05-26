import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:hoops_new_26_05/Utilities/math_utils.dart';
import 'package:hoops_new_26_05/app/routes/app_pages.dart';
import 'package:hoops_new_26_05/constant/constants.dart';

import '../controllers/home_tab_controller.dart';

class HomeTabView extends GetView<HomeTabController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xffF9F6F4),
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getSize(10, context)),
                Card(
                  elevation: 1,
                  child: Container(
                    height: getSize(180, context),
                    width: Get.width,
                    padding: EdgeInsets.symmetric(
                        horizontal: getSize(15, context),
                        vertical: getSize(15, context)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getSize(5, context)),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/user01.jpg"),
                            ),
                            SizedBox(width: getSize(10, context)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hey, John Doe.",
                                  style: TextStyle(
                                      fontSize: getFontSize(17, context)),
                                ),
                                Text(
                                  "52 Games, 230 Points",
                                  style: TextStyle(
                                      fontSize: getFontSize(14, context)),
                                ),
                              ],
                            ),
                            Spacer(),
                            InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.NOTIFICATION_SCREEN);
                                },
                                child: SvgPicture.asset(
                                    "assets/notificationIcon.svg")),
                            SizedBox(width: getSize(15, context)),
                            SvgPicture.asset("assets/messageIcon.svg"),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: getSize(35, context),
                          padding: EdgeInsets.symmetric(
                              horizontal: getSize(15, context),
                              vertical: getSize(5, context)),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100.withOpacity(0.5),
                              borderRadius:
                                  BorderRadius.circular(getSize(5, context))),
                          child: Row(
                            children: [
                              Text("State Rank"),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(getSize(5, context)),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff3C4858)),
                                child: Text(
                                  "15",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getFontSize(14, context)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: getSize(5, context)),
                        Container(
                          height: getSize(35, context),
                          padding: EdgeInsets.symmetric(
                              horizontal: getSize(15, context),
                              vertical: getSize(5, context)),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100.withOpacity(0.5),
                              borderRadius:
                                  BorderRadius.circular(getSize(5, context))),
                          child: Row(
                            children: [
                              Text(
                                "National Rank",
                                style: TextStyle(
                                    color: ColorConstant.primaryTheme),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(getSize(5, context)),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorConstant.primaryTheme),
                                child: Text(
                                  "75",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getFontSize(14, context)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: getSize(10, context)),
                Container(
                  height: getSize(170, context),
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getSize(5, context)),
                      color: Color(0xff5199AB),
                      image: DecorationImage(
                          image: AssetImage("assets/dashboardBack.png"),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          "Leaderboard",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: getFontSize(30, context),
                              fontWeight: FontWeight.bold),
                        ),
                        top: getSize(30, context),
                        left: getSize(50, context),
                      ),
                      Positioned(
                        bottom: getSize(30, context),
                        left: getSize(30, context),
                        child: Container(
                          child: Text(
                            "Check Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getFontSize(20, context)),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: getSize(18, context),
                              vertical: getSize(8, context)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff187992),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getSize(10, context)),
                Container(
                  height: getSize(170, context),
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getSize(5, context)),
                      color: Color(0xff5199AB),
                      image: DecorationImage(
                          image: AssetImage("assets/homeBack1.png"),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          "My Friends",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: getFontSize(30, context),
                              fontWeight: FontWeight.bold),
                        ),
                        top: getSize(30, context),
                        right: getSize(50, context),
                      ),
                      Positioned(
                        bottom: getSize(30, context),
                        right: getSize(30, context),
                        child: Container(
                          child: Text(
                            "Search",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: getFontSize(20, context)),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: getSize(30, context),
                              vertical: getSize(8, context)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffDAA000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getSize(20, context)),
                Text(
                  "Discover",
                  style: TextStyle(fontSize: getFontSize(20, context)),
                ),
                SizedBox(height: getSize(20, context)),
                Container(
                  height: getSize(250, context),
                  width: Get.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/homeBack4.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      getSize(5, context)),
                                ),
                                child: SizedBox(
                                    height: Get.height,
                                    width: Get.width,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: getSize(10, context),
                                            bottom: getFontSize(10, context)),
                                        child: Text(
                                          "News\nBasketball",
                                          style: TextStyle(
                                              fontSize:
                                                  getFontSize(20, context),
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(height: getSize(15, context)),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/homeBack3.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topRight:
                                          Radius.circular(getSize(5, context)),
                                      topLeft:
                                          Radius.circular(getSize(5, context))),
                                ),
                                child: SizedBox(
                                    height: Get.height,
                                    width: Get.width,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: getSize(10, context),
                                            bottom: getFontSize(10, context)),
                                        child: Text(
                                          "Local\nSport News",
                                          style: TextStyle(
                                              fontSize:
                                                  getFontSize(20, context),
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: getSize(10, context)),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/homeBack2.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(getSize(5, context)),
                                topLeft: Radius.circular(getSize(5, context))),
                          ),
                          child: SizedBox(
                              height: Get.height,
                              width: Get.width,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getSize(10, context),
                                      bottom: getFontSize(10, context)),
                                  child: Text(
                                    "News\nBasketball",
                                    style: TextStyle(
                                        fontSize: getFontSize(20, context),
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getSize(10, context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
