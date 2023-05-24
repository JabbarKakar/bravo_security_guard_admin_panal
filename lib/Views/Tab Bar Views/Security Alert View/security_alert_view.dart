import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Components/small_button.dart';
import '../../../Components/text_10_bold.dart';
import '../../../Components/text_10_medium.dart';
import '../../../Components/text_16_bold.dart';
import '../../../Components/text_8.dart';
import '../../../Utils/app_colors/app_colors.dart';

class SecurityAlertView extends StatefulWidget {
  const SecurityAlertView({Key? key}) : super(key: key);

  @override
  State<SecurityAlertView> createState() => _SecurityAlertViewState();
}

class _SecurityAlertViewState extends State<SecurityAlertView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * .8,
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
                              text: 'Security Alerts',
                              color: AppColors.blackText),
                          SmallButton(
                              title: 'View All',
                              height: Get.height * .03,
                              width: Get.width * .2,
                              buttonColor: AppColors.viewButton,
                              titleColor: AppColors.blackText,
                              onPress: () {})
                        ],
                      ),
                    ),
                    Divider(
                      color: AppColors.border,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Container(
                            height: Get.height * .05,
                            decoration: BoxDecoration(
                                color: AppColors.yellowColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text10Medium(
                                      text: 'Name',
                                      color: AppColors.blackText),
                                  Text10Medium(
                                      text: 'Details',
                                      color: AppColors.blackText),
                                  Text10Medium(
                                      text: 'Status',
                                      color: AppColors.blackText),
                                  Text10Medium(
                                      text: 'Auctions',
                                      color: AppColors.blackText),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Get.height * .015,
                          ),
                          SizedBox(
                            height: Get.height * .65,
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
      ),
    );
  }
}
