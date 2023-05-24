import 'package:brave_security_guard_admin_pannel/Components/yellow_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/small_button.dart';
import '../../Components/text_10_bold.dart';
import '../../Components/text_10_medium.dart';
import '../../Components/text_12.dart';
import '../../Components/text_12_bold.dart';
import '../../Components/text_14_medium.dart';
import '../../Components/text_8.dart';
import '../../Utils/app_colors/app_colors.dart';

class SecurityAlertView extends StatefulWidget {
  const SecurityAlertView({Key? key}) : super(key: key);

  @override
  State<SecurityAlertView> createState() => _SecurityAlertViewState();
}

class _SecurityAlertViewState extends State<SecurityAlertView> {
  String? selectedItem;
  static List<String> weeks = [
    "This Week",
    "Previous Week",
  ];
  String? selectedSort;
  static List<String> sortBy = [
    "Sort By",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Security Alert',
          style: TextStyle(
              color: AppColors.whiteText,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        elevation: 0,
        actions: [
          Icon(
            Icons.message_outlined,
            color: AppColors.yellowColor,
          ),
          SizedBox(
            width: Get.width * .03,
          ),
          Icon(
            Icons.notifications_active_outlined,
            color: AppColors.yellowColor,
          ),
          SizedBox(
            width: Get.width * .03,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage:AssetImage('assets/images/profile.jpg',),
            ),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text14Medium(text: 'Security Alert', color: AppColors.blackText),
                SizedBox(
                  width: Get.width * .5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Get.height * .03,
                        width: Get.width * .23,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.border),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DropdownButton(
                            underline: Container(),
                            value: selectedSort,
                            menuMaxHeight: 300.h,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 18,
                            isExpanded: true,
                            hint: Text(
                              'Enter here',
                              style: TextStyle(
                                  color: AppColors.greyText, fontSize: 10),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedSort = value;
                              });
                            },
                            items: sortBy.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.black),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * .03,
                        width: Get.width * .23,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.border),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DropdownButton(
                            underline: Container(),
                            value: selectedItem,
                            menuMaxHeight: 300.h,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 18,
                            isExpanded: true,
                            hint: Text(
                              'Enter here',
                              style: TextStyle(
                                  color: AppColors.greyText, fontSize: 10),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value;
                              });
                            },
                            items: weeks.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.black),
                                  ));
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(color: AppColors.border,),
            SizedBox(
              height: Get.height * .01,
            ),
            Container(
              height: Get.height * .8,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.border),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const YellowRow(text1: 'Name', text2: 'Details', text3: 'Status', text4: 'Description'),
                        SizedBox(
                          height: Get.height * .015,
                        ),
                        SizedBox(
                          height: Get.height * .71,
                          child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    height: Get.height * .055,
                                    decoration: BoxDecoration(
                                        color: AppColors.rowBgColor,
                                        borderRadius:
                                        BorderRadius.circular(5)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Get.width * .009,
                                          vertical: Get.height * .003),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              const CircleAvatar(
                                                radius: 15,
                                                backgroundImage: AssetImage(
                                                  'assets/images/profile.jpg',
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text10Bold(
                                                      text: 'John Smith',
                                                      color: AppColors
                                                          .blackText),
                                                  Text8(
                                                      text: '12 March 2023',
                                                      color: AppColors
                                                          .greyText),
                                                ],
                                              ),
                                              Container(
                                                height: Get.height * .035,
                                                width: Get.width * .002,
                                                decoration: BoxDecoration(
                                                    color:
                                                    AppColors.border),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text10Bold(
                                                      text: 'Job Title',
                                                      color: AppColors
                                                          .blackText),
                                                  Text8(
                                                      text: 'High',
                                                      color: AppColors
                                                          .greyText),
                                                ],
                                              ),
                                              Container(
                                                height: Get.height * .035,
                                                width: Get.width * .002,
                                                decoration: BoxDecoration(
                                                    color:
                                                    AppColors.border),
                                              ),
                                              SmallButton(
                                                  title: 'Inprogress',
                                                  height: 20.h,
                                                  width: 70.w,
                                                  buttonColor:
                                                  AppColors.greenButton,
                                                  titleColor:
                                                  AppColors.whiteText,
                                                  onPress: () {}),
                                              Container(
                                                height: Get.height * .035,
                                                width: Get.width * .002,
                                                decoration: BoxDecoration(
                                                    color:
                                                    AppColors.border),
                                              ),
                                              Container(
                                                height: 20.h,
                                                width: 40.w,
                                                decoration: BoxDecoration(
                                                    color: AppColors
                                                        .yellowColor,
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(3)),
                                                child: const Icon(
                                                  Icons.visibility,
                                                  size: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * .006,
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
