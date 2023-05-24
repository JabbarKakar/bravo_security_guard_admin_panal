import 'package:brave_security_guard_admin_pannel/Components/text_16_bold.dart';
import 'package:brave_security_guard_admin_pannel/Views/Company%20View/Conpany%20View.dart';
import 'package:brave_security_guard_admin_pannel/Views/User%20View/user_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/app_colors/app_colors.dart';
import '../Views/Announcement View/announcement_view.dart';
import '../Views/Complaints View/complaints_view.dart';
import '../Views/Contract View/contract_view.dart';
import '../Views/Dashboard View/dashboard_view.dart';
import '../Views/Enquries View/enquiries_view.dart';
import '../Views/Human Resources/human_resources.dart';
import '../Views/Invoices View/invoices_view.dart';
import '../Views/Message View/messages_view.dart';
import '../Views/Payments View/payment_view.dart';
import '../Views/Reports View/reports_view.dart';
import '../Views/Schedule View/schedule_view.dart';
import '../Views/Settings View/setting_view.dart';
import '../Views/Tracking View/tracking_view.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  List<String> title = [
    'Dashboard',
    'Companies',
    'User',
    'My Schedule',
    'Complaint',
    'Human Resources',
    'Enquiries',
    'Report',
    'Announcement',
    'Messages',
    'Tracks',
    'Invoices',
    'Contracts',
    'Payment',
    'Setting'
  ];
  List<IconData> icons = [
    Icons.dashboard_outlined,
    Icons.factory_outlined,
    Icons.person_outlined,
    Icons.date_range_outlined,
    Icons.error_outline_outlined,
    Icons.lan_outlined,
    Icons.find_in_page_outlined,
    Icons.request_page_outlined,
    Icons.notifications_active_outlined,
    Icons.message_outlined,
    Icons.location_on_outlined,
    Icons.cast_connected_outlined,
    Icons.edit_note_outlined,
    Icons.credit_card_outlined,
    Icons.settings_outlined,
  ];

  List<Widget> onTapArray = [
    const DashboardView(),
    const CompaniesView(),
    const UserView(),
    const ScheduleView(),
    const ComplaintsView(),
    const HumanResources(),
    const EnquiriesView(),
    const ReportsView(),
    const AnnouncementView(),
    const MessagesView(),
    const TrackingView(),
    const InvoicesView(),
    const ContractView(),
    const SettingView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.drawerColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.bgColor),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                      scale: 10),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                Text16Bold(text: 'John Smith', color: AppColors.whiteText),
                Text16Bold(text: 'Guard', color: AppColors.whiteText)
              ],
            ),
          ),
          SizedBox(
            height: Get.height * .66,
            child: ListView.builder(
              itemCount: onTapArray.length,
              itemBuilder: (context, index) {
                return Column(children: [
                  ListTile(
                    onTap: (){
                      print('This is index $index');
                      Get.back();
                      Get.to(onTapArray[index]);
                    },
                    leading: Icon(icons[index], color: AppColors.yellowIcon),
                    title: Text16Bold(
                      text: title[index],
                      color: AppColors.whiteText,
                    ),
                  ),
                  Divider(
                    color: AppColors.bgColor,
                  )
                ]);
              },
            ),
          ),
          SizedBox(
            height: Get.height * .025,
          ),
          Container(
              height: 50,
              decoration: BoxDecoration(color: AppColors.bgColor),
              child: ListTile(
                title: Text16Bold(
                  text: 'Logout',
                  color: AppColors.whiteText,
                ),
                leading: Icon(
                  Icons.logout_outlined,
                  color: AppColors.yellowIcon,
                ),
              ))
        ],
      ),
    );
  }
}
