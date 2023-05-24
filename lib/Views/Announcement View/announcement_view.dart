import 'package:brave_security_guard_admin_pannel/Components/grey_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/small_button.dart';
import '../../Components/text_14_medium.dart';
import '../../Utils/app_colors/app_colors.dart';

class AnnouncementView extends StatefulWidget {
  const AnnouncementView({Key? key}) : super(key: key);

  @override
  State<AnnouncementView> createState() => _AnnouncementViewState();
}

class _AnnouncementViewState extends State<AnnouncementView> {
  String? selectedItem;
  static List<String> weeks = [
    "This Week",
    "Previous Week",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Announcement',
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
              backgroundImage: AssetImage(
                'assets/images/profile.jpg',
              ),
            ),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text14Medium(
                      text: 'Announcement', color: AppColors.blackText),
                  Container(
                    height: Get.height * .03,
                    width: Get.width * .23,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.border,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButton(
                        underline: Container(),
                        value: selectedItem,
                        menuMaxHeight: 300.h,
                        hint: Text(
                          'Enter here',
                          style: TextStyle(
                              color: AppColors.greyText, fontSize: 10),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 18,
                        isExpanded: true,
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
                                  color: AppColors.blackText,
                                ),
                              ));
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.border,
              ),
              SizedBox(
                height: Get.height * .005,
              ),
              Text14Medium(
                text: '19-March-2022',
                color: AppColors.blackText,
              ),
              SizedBox(
                height: Get.height * .005,
              ),
              Container(
                height: Get.height * .31,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * .01),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * .285,
                            child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    const GreyRow(
                                      text1: 'John Smith',
                                      text2: '12 March 2022',
                                      text3: 'Lorem ipsum dolor sit\namet, consectetu',
                                      image: 'assets/images/profile.jpg',
                                    ),
                                    SizedBox(
                                      height: 5.h,
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
              SizedBox(height: Get.height * .015),
              Text(
                '20-March-2022',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.blackText,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * .005,
              ),
              Container(
                height: Get.height * .31,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * .01),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * .285,
                            child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    const GreyRow(
                                      text1: 'John Smith',
                                      text2: '12 March 2022',
                                      text3: 'Lorem ipsum dolor sit\namet, consectetu',
                                      image: 'assets/images/profile.jpg',
                                    ),
                                    SizedBox(
                                      height: 5.h,
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
              SizedBox(height: Get.height * .015),
              Text(
                '21-March-2022',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.blackText,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * .005,
              ),
              Container(
                height: Get.height * .31,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(height: Get.height * .01),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * .285,
                            child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    const GreyRow(
                                      text1: 'John Smith',
                                      text2: '12 March 2022',
                                      text3: 'Lorem ipsum dolor sit\namet, consectetu',
                                      image: 'assets/images/profile.jpg',
                                    ),
                                    SizedBox(
                                      height: 5.h,
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
      ),
    );
  }
}
