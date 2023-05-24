import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Components/text_16_bold.dart';
import '../../../Utils/app_colors/app_colors.dart';

class HoursHistoryView extends StatefulWidget {
  const HoursHistoryView({Key? key}) : super(key: key);

  @override
  State<HoursHistoryView> createState() => _HoursHistoryViewState();
}

class _HoursHistoryViewState extends State<HoursHistoryView> {
  String? selectedItem;
  static List<String> weeks = [
    "This Week",
    "Previous Week",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height * .8,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .015,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text16Bold(
                              text: 'Hours History',
                              color: AppColors.blackText),
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
                                      color: AppColors.greyText,
                                      fontSize: 10),
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
                    Divider(
                      color: AppColors.border,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: Get.height * .7,
                      child: LineChart(
                        LineChartData(
                            borderData: FlBorderData(show: false),
                            lineBarsData: [
                              LineChartBarData(spots: [
                                const FlSpot(1, 3),
                                const FlSpot(2, 10),
                                const FlSpot(3, 7),
                                const FlSpot(4, 12),
                                const FlSpot(5, 13),
                                const FlSpot(6, 17),
                                const FlSpot(7, 15),
                              ])
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
