import 'package:brave_security_guard_admin_pannel/Components/text_10_bold.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_10_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_24.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_8.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/main_drawer.dart';
import '../../Components/small_button.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../Tab Bar Views/Hours History View/hours_history_view.dart';
import '../Tab Bar Views/Security Alert View/security_alert_view.dart';
import '../Tab Bar Views/Today Schedule View/today_schedule_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Text16Bold(
                  text: 'Today Schedule', color: AppColors.whiteText),
            ),
            Tab(
                child: Text16Bold(
              text: 'Hours History',
              color: AppColors.whiteText,
            )),
            Tab(
              child: Text16Bold(
                  text: 'Security Alert', color: AppColors.whiteText),
            ),
          ]),
          title: Text16Bold(
            text: 'Dashboard',
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
        body: const TabBarView(children: [
          TodayScheduleView(),
          HoursHistoryView(),
          SecurityAlertView()
        ]),
      ),
    );
  }
}
