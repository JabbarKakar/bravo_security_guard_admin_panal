import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Components/small_button.dart';
import '../../../Components/text_10_bold.dart';
import '../../../Components/text_16_bold.dart';
import '../../../Components/text_24.dart';
import '../../../Components/text_8.dart';
import '../../../Utils/app_colors/app_colors.dart';
class TodayScheduleView extends StatefulWidget {
  const TodayScheduleView({Key? key}) : super(key: key);

  @override
  State<TodayScheduleView> createState() => _TodayScheduleViewState();
}

class _TodayScheduleViewState extends State<TodayScheduleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .1,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: Get.height * .1,
                        width: Get.width * .4,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.border,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: ListTile(
                            title: const Text24(
                              text: '200',
                            ),
                            subtitle: Text16Bold(
                              text: 'Hours',
                              color: AppColors.greyText,
                            ),
                            trailing: Icon(
                              Icons.watch_later_outlined,
                              color: AppColors.yellowIcon,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: Get.height * .015,
              ),
              Text16Bold(text: 'Today Schedule', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              Container(
                height: Get.height * .650,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Get.height * .082,
                                width: Get.width * .082,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bgColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text10Bold(
                                      text: '22',
                                      color: AppColors.whiteText,
                                    ),
                                    Text10Bold(
                                      text: 'March',
                                      color: AppColors.whiteText,
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(
                                    text: 'Job 01',
                                    color: AppColors.blackText,
                                  ),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(
                                      text: 'Area Name',
                                      color: AppColors.greyText),
                                ],
                              ),
                              Container(
                                height: Get.height * .05,
                                width: Get.width * .002,
                                decoration:
                                BoxDecoration(color: AppColors.greyText),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(
                                    text: '10AM-12PM',
                                    color: AppColors.blackText,
                                  ),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(
                                      text: '2 hours',
                                      color: AppColors.greyText),
                                ],
                              ),
                              Container(
                                height: Get.height * .05,
                                width: Get.width * .002,
                                decoration: BoxDecoration(
                                  color: AppColors.border,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(
                                      text: 'Status',
                                      color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(
                                      text: 'Completed',
                                      color: AppColors.greyText),
                                ],
                              ),
                              SmallButton(
                                  title: 'View Detail',
                                  height: 22.h,
                                  width: 80.w,
                                  buttonColor: AppColors.greenButton,
                                  titleColor: AppColors.whiteText,
                                  onPress: () {}),
                            ],
                          ),
                          Divider(
                            color: AppColors.border,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
