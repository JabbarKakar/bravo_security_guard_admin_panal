import 'package:brave_security_guard_admin_pannel/Components/text_12.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_bold.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/small_button.dart';
import '../../Utils/app_colors/app_colors.dart';

class NotificationSettingView extends StatefulWidget {
  const NotificationSettingView({Key? key}) : super(key: key);

  @override
  State<NotificationSettingView> createState() => _NotificationSettingViewState();
}

class _NotificationSettingViewState extends State<NotificationSettingView> {
  List<bool> switchValues = [true, true, false, true];
  List<String> titleArray = ['Priority', 'Permission', 'Subscription', 'Priority'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification Setting',
          style: TextStyle(
              color: AppColors.whiteText,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color: AppColors.whiteColor,
            )),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * .035,
            ),
            Text(
              'Notification Setting',
              style: TextStyle(
                  color: AppColors.blackText, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * .008,
            ),
            SizedBox(
              width: Get.width * .15,
              child: Divider(
                color: AppColors.yellowColor,
                thickness: 5,
              ),
            ),
            SizedBox(
              height: Get.height * .03,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: titleArray.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: (){
                          Get.to(const NotificationSettingView());
                        },
                        title: Text14Bold(text: titleArray[index], color: AppColors.blackText),
                        subtitle: Text12(text: 'Show notification at the permission list', color: AppColors.greyText),
                        trailing: Switch(
                          // thumbColor: const MaterialStatePropertyAll<Color>(AppColors.primaryTextColor,),
                          value: switchValues[index],
                          onChanged: (bool value) {
                            setState(() {
                              switchValues[index] = value;
                            });
                          },
                        ),
                      ),
                      Divider(color: AppColors.border,)
                    ],
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
