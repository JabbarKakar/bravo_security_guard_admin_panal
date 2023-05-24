import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/text_12.dart';
import '../../Components/text_12_bold.dart';
import '../../Components/text_14_medium.dart';
import '../../Components/yellow_row.dart';
import '../../Utils/app_colors/app_colors.dart';

class EnquiriesView extends StatefulWidget {
  const EnquiriesView({Key? key}) : super(key: key);

  @override
  State<EnquiriesView> createState() => _EnquiriesViewState();
}

class _EnquiriesViewState extends State<EnquiriesView> {
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
          'Enquiries',
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
                Text14Medium(text: 'Enquiries', color: AppColors.blackText),
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
                        const YellowRow(
                          text1: 'ID',
                          text2: 'Name',
                          text3: 'Email',
                          text4: 'Phone No.',
                        ),
                        SizedBox(
                          height: Get.height * .015,
                        ),
                        SizedBox(
                          height: Get.height * .72,
                          child: ListView.builder(
                            itemCount: 15,
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
                                          horizontal: 12, vertical: 3),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text12(text:'876584', color: AppColors.greyText),
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
                                          Text12(text: 'xyz@gmail.com', color: AppColors.greyText),
                                          Container(
                                            height: Get.height * .035,
                                            width: Get.width * .002,
                                            decoration: BoxDecoration(
                                                color: AppColors.border),
                                          ),
                                          Text12(text: '1234567890', color: AppColors.greyText)
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
    );
  }
}
