import 'package:brave_security_guard_admin_pannel/Components/text_12.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_bold.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/small_button.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../Billing View/billing_view.dart';
import '../Change Password View/change_password_view.dart';
import '../Notification Setting View/notification_setting_view.dart';
import '../Profile Setting View/profile_setting_view.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  List<String> titleArray = [
    'Change Password',
    'Profile Setting',
    'Website Setting',
    'Billing',
    'Notification',
  ];
  List<Widget> onTapArray = [
    const ChangePasswordView(),
    const ProfileSettingView(),
    const ProfileSettingView(),
    const BillingView(),
    const NotificationSettingView(),
    // const UploadsDocuments()
  ];
  List<dynamic> leadingArray = [
    'assets/images/lock.png',
    'assets/images/setting.png',
    'assets/images/web.png',
    'assets/images/billing.png',
    'assets/images/notification.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
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
      body: Column(
        children: [
          SizedBox(
            height: Get.height * .04,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: titleArray.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.to(onTapArray[index]);
                      },
                      title: Text14Bold(
                          text: titleArray[index], color: AppColors.blackText),
                      subtitle: Text12(
                          text:
                              'lorem ipsum sit amet is a good and easy\nfor graphic designer ',
                          color: AppColors.greyText),
                      leading: Image.asset(leadingArray[index]),
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Divider(
                      color: AppColors.border,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
