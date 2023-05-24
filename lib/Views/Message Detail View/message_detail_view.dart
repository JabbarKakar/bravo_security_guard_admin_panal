import 'package:brave_security_guard_admin_pannel/Components/text_10_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_12.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/small_button.dart';
import '../../Components/text_14_bold.dart';
import '../../Utils/app_colors/app_colors.dart';

class MessageDetailView extends StatefulWidget {
  const MessageDetailView({Key? key}) : super(key: key);

  @override
  State<MessageDetailView> createState() => _MessageDetailViewState();
}

class _MessageDetailViewState extends State<MessageDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(
            color: AppColors.whiteText,
            fontSize: 16.sp,
          ),
        ),
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color: AppColors.whiteColor,
            )),
        actions: [
          Row(
            children: [

              Icon(
                Icons.message_outlined,
                color: AppColors.yellowColor,
              ),
              SizedBox(
                width: 15.w,
              ),
              Icon(
                Icons.notifications_active_outlined,
                color: AppColors.yellowColor,
              ),
              SizedBox(
                width: 15.w,
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            ListTile(
                onTap: () {
                  Get.to(const MessageDetailView());
                },
                title: Text14Bold(text: 'John Smith', color: AppColors.blackText),
                subtitle: Text12(text: 'online', color: AppColors.greyText),
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/profile.jpg',
                  ),
                ),
                trailing: Icon(
                  Icons.more_vert_outlined,
                  color: AppColors.border,
                  size: 22,
                )),
            SizedBox(
              height: 5.h,
            ),
            Divider(
              color: AppColors.border,
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: Get.height * .55,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 65),
                        child: Text12(text: 'Tim', color: AppColors.blackText),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 210.w,
                            decoration: BoxDecoration(
                                color: AppColors.yellowColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text12(text: 'lorem ipsum sit amet', color: AppColors.blackText),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text10Medium(text: '10:47', color: AppColors.blackText),
                                      Icon(
                                        Icons.check,
                                        color: AppColors.bgColor,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/profile.jpg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.030,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/profile.jpg',
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            //height: 40.h,
                            width: 210.w,
                            decoration: BoxDecoration(
                                color: AppColors.greyText,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text12(text: 'lorem ipsum sit amet', color: AppColors.blackText),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text10Medium(text: '10:47', color: AppColors.blackText),
                                      Icon(
                                        Icons.check,
                                        color: AppColors.bgColor,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: AppColors.border,
            ),
            TextFormField(
              cursorColor: AppColors.border,
              cursorHeight: Get.height * .03,
              style: TextStyle(fontSize: 12.sp, color: AppColors.greyText),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.emoji_emotions_sharp,
                  color: AppColors.border,
                ),
                suffixIcon: SizedBox(
                  width: Get.width * .17,
                  child: Row(
                    children: [
                      Icon(
                        Icons.attach_file,
                        color: AppColors.border,
                      ),
                      Icon(
                        Icons.play_circle,
                        color: AppColors.yellowColor,
                      ),
                    ],
                  ),
                ),
                hintStyle:
                    TextStyle(fontSize: 12.sp, color: AppColors.greyText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
