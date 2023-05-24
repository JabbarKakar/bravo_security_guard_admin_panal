import 'package:brave_security_guard_admin_pannel/Components/text_12_bold.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/reusable_container.dart';
import '../../Components/small_button.dart';
import '../../Components/text_12.dart';
import '../../Utils/app_colors/app_colors.dart';

class HumanResources extends StatefulWidget {
  const HumanResources({Key? key}) : super(key: key);

  @override
  State<HumanResources> createState() => _HumanResourcesState();
}

class _HumanResourcesState extends State<HumanResources> {
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
          'Human Resource',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text14Medium(text: 'Leaves', color: AppColors.blackText),
              Divider(
                color: AppColors.border,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ReusableContainer(
                      icon: Icons.date_range_outlined,
                      title: '42',
                      subTitle: 'Total Leaves'),
                  ReusableContainer(
                      icon: Icons.date_range_outlined,
                      title: '42',
                      subTitle: 'Sick Leaves')
                ],
              ),
              SizedBox(
                height: Get.height * .015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ReusableContainer(
                      icon: Icons.date_range_outlined,
                      title: '42',
                      subTitle: 'Casual Leaves'),
                  ReusableContainer(
                      icon: Icons.date_range_outlined,
                      title: '42',
                      subTitle: 'Annual Leaves')
                ],
              ),
              SizedBox(height: Get.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text14Medium(text: 'Attendance', color: AppColors.blackText),
                  Container(
                    height: Get.height * .03,
                    width: Get.width * .23,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                    fontSize: 10.sp, color: Colors.black),
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
                height: Get.height * .01,
              ),
              Container(
                height: Get.height * .52,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .015,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Container(
                            height: Get.height * .052,
                            decoration: BoxDecoration(
                                color: AppColors.yellowColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text12Bold(
                                      text: 'ID', color: AppColors.blackText),
                                  Text12Bold(
                                      text: 'Name', color: AppColors.blackText),
                                  Text12Bold(
                                      text: 'Details',
                                      color: AppColors.blackText),
                                  Text12Bold(
                                      text: 'Duration',
                                      color: AppColors.blackText),
                                  Text12Bold(
                                      text: 'Status',
                                      color: AppColors.blackText),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Get.height * .015,
                          ),
                          SizedBox(
                            height: Get.height * .43,
                            child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: Get.height * .05.h,
                                      decoration: BoxDecoration(
                                          color: AppColors.rowBgColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18, vertical: 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text12(text:'12345678', color: AppColors.greyText),
                                            Container(
                                              height: Get.height * .035,
                                              width: Get.width * .002,
                                              decoration: BoxDecoration(
                                                  color: AppColors.border),
                                            ),
                                            Text12(text: 'John Smith', color: AppColors.greyText),
                                            Container(
                                              height: Get.height * .035,
                                              width: Get.width * .002,
                                              decoration: BoxDecoration(
                                                  color: AppColors.border),
                                            ),
                                            Text12(text: '12-3-2022', color: AppColors.greyText),
                                            Container(
                                              height: Get.height * .035,
                                              width: Get.width * .002,
                                              decoration: BoxDecoration(
                                                  color: AppColors.border),
                                            ),
                                            Text12(text: '3 Hours', color: AppColors.greyText),
                                            Container(
                                              height: Get.height * .035,
                                              width: Get.width * .002,
                                              decoration: BoxDecoration(
                                                  color: AppColors.border),
                                            ),
                                            Text12(text: '9 AM', color: AppColors.greyText),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * .005,
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
