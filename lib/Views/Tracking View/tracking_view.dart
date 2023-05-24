import 'package:brave_security_guard_admin_pannel/Components/text_10_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_12.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_bold.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/small_button.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../Message Detail View/message_detail_view.dart';

class TrackingView extends StatefulWidget {
  const TrackingView({Key? key}) : super(key: key);

  @override
  State<TrackingView> createState() => _TrackingViewState();
}

class _TrackingViewState extends State<TrackingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tracking',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text14Medium(text: 'Tracking', color: AppColors.blackText),
                Divider(
                  color: AppColors.border,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: (){
                      //  Get.to(const MessageDetailView());
                      },
                      title: Text14Bold(text: 'John Smith', color: AppColors.blackText),
                      subtitle: Text12(text: 'lorem ipsum sit amet', color: AppColors.greyText),
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage:AssetImage('assets/images/profile.jpg',),
                      )
                    ),
                    Divider(color: AppColors.border,)
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
