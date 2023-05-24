import 'package:brave_security_guard_admin_pannel/Components/main_drawer.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/white_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Components/text_16_bold.dart';
import '../../Components/yellow_row.dart';
import '../../Utils/app_colors/app_colors.dart';

class CompaniesView extends StatefulWidget {
  const CompaniesView({Key? key}) : super(key: key);

  @override
  State<CompaniesView> createState() => _CompaniesViewState();
}

class _CompaniesViewState extends State<CompaniesView> {
  List<String> serialNum = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20'
  ];
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
        title: Text16Bold(
          text: 'Companies',
          color: AppColors.whiteText,
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text14Medium(
                  text: 'Companies',
                  color: AppColors.blackText,
                ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                        fontSize: 10.sp, color: Colors.black),
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
                ),
              ],
            ),
            Divider(
              color: AppColors.border,
            ),
            const YellowRow(
              text1: 'No',
              text2: 'Company Name',
              text3: 'No. Guards',
              text4: 'Locations',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: serialNum.length,
                itemBuilder: (BuildContext context, int index) {
                  return WhiteRow(
                    text1: serialNum[index],
                    image: 'assets/images/fb.png',
                    text2: 'Company Name',
                    text3: '20',
                    text4: 'Green Lanterbul\nlivard house',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
