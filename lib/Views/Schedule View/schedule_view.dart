import 'package:brave_security_guard_admin_pannel/Components/small_button.dart';
import 'package:brave_security_guard_admin_pannel/Components/table.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_10_bold.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_8.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/main_drawer.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  String? selectedItem;
  static List<String> weeks = [
    "This Week",
    "Previous Week",
  ];
  final DataTableSource _list = TableData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text16Bold(
          text: 'Schedule',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // PaginatedDataTable(
              //   columnSpacing: 20,
              //   source: _list,
              //     columns: [
              //       DataColumn(label: Text('Mon', style: TextStyle(color: AppColors.blackText),)),
              //       DataColumn(label: Text('Tue', style: TextStyle(color: AppColors.blackText),)),
              //       DataColumn(label: Text('Wed', style: TextStyle(color: AppColors.blackText),)),
              //       DataColumn(label: Text('Thu', style: TextStyle(color: AppColors.blackText),)),
              //       DataColumn(label: Text('Fri', style: TextStyle(color: AppColors.blackText),)),
              //       DataColumn(label: Text('Sat', style: TextStyle(color: AppColors.blackText),)),
              //       DataColumn(label: Text('Sun', style: TextStyle(color: AppColors.blackText),)),
              //     ], ),

              Row(
                children: [
                  Container(
                    height: Get.height * .05,
                    width: Get.width * .45,
                    decoration: BoxDecoration(
                        color: AppColors.tableBody,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Get.height * .05,
                          width: Get.width * .11,
                          decoration: BoxDecoration(
                              color: AppColors.roundContainer,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5))),
                          child: Icon(Icons.keyboard_arrow_left),
                        ),
                        Text('March 2022', style: GoogleFonts.inter(
                          fontSize: 12.sp, fontWeight: FontWeight.normal,
                          color: AppColors.blackText
                        ),),

                        Container(
                          height: Get.height * .05,
                          width: Get.width * .11,
                          decoration: BoxDecoration(
                              color: AppColors.roundContainer,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5))),
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * .01,),

              SizedBox(
                height: Get.height * .62,
                child: DataTable2(
                    dataRowHeight: 65,
                    headingRowColor:
                        MaterialStatePropertyAll(AppColors.roundContainer),
                    decoration: BoxDecoration(
                        color: AppColors.tableBody,
                        borderRadius: BorderRadius.circular(20)),
                    columnSpacing: 3,
                    //horizontalMargin: 12,
                    minWidth: 400,
                    columns: [
                      DataColumn2(
                        label: Text(
                          'Mun',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Tue',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Wed',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Thu',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Fri',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Sat',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Sun',
                          style: TextStyle(color: AppColors.blackText),
                        ),
                        // numeric: true,
                      ),
                    ],
                    rows: List<DataRow>.generate(
                        6,
                        (index) => const DataRow(cells: [
                              DataCell(Text('A')),
                              DataCell(Text('B')),
                              DataCell(Text('C')),
                              DataCell(Text('D')),
                              DataCell(Text('D')),
                              DataCell(Text('D')),
                              DataCell(Text(('ajks')))
                            ]))),
              ),
              SizedBox(height: Get.height * .02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text14Medium(text: 'My Schedule', color: AppColors.blackText),
                  Container(
                    height: Get.height * .03,
                    width: Get.width * .23,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.border,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButton(
                        underline: Container(),
                        value: selectedItem,
                        menuMaxHeight: 300.h,
                        hint: Text(
                          'Enter here',
                          style: TextStyle(
                              color: AppColors.greyText, fontSize: 10),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 18,
                        isExpanded: true,
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
                                  color: AppColors.blackText,
                                ),
                              ));
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.border,
              ),
              SizedBox(
                height: Get.height * .005,
              ),
              Text14Medium(text: '19-March-2022', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              Container(
                height: Get.height * .35,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Get.height * .08,
                                width: Get.width * .08,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bgColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text10Bold(text: '22', color: AppColors.whiteText,),
                                    Text8(text: 'March', color: AppColors.whiteText)
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(text:
                                    'Job 01', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: 'Area Name', color: AppColors.greyText),
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
                                  Text10Bold(text: '10AM-12PM', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: '2 hours', color: AppColors.greyText),
                                ],
                              ),
                              Container(
                                height: Get.height * .05,
                                width: Get.width * .002,
                                decoration:
                                const BoxDecoration(color: Colors.grey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(text: 'Status', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: 'Completed', color: AppColors.greyText),
                                ],
                              ),
                              SmallButton(
                                  title: 'View Detail',
                                  height: Get.height * .04,
                                  width: Get.width * .22,
                                  buttonColor: AppColors.yellowColor,
                                  titleColor: AppColors.whiteText,
                                  onPress: () {}),
                              Container(
                                height: Get.height * .04,
                                width: Get.width * .1,
                                decoration: BoxDecoration(
                                    color:
                                    AppColors.redButton,
                                    borderRadius:
                                    BorderRadius.circular(
                                        3)),
                                child: Icon(
                                  Icons.delete,
                                  color: AppColors.whiteColor,
                                  size: 28,
                                ),
                              ),

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

              SizedBox(
                height: Get.height * .02,
              ),
              Text14Medium(text: '20-March-2022', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              Container(
                height: Get.height * .35,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Get.height * .08,
                                width: Get.width * .08,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bgColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text10Bold(text: '22', color: AppColors.whiteText,),
                                    Text8(text: 'March', color: AppColors.whiteText)
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(text:
                                  'Job 01', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: 'Area Name', color: AppColors.greyText),
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
                                  Text10Bold(text: '10AM-12PM', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: '2 hours', color: AppColors.greyText),
                                ],
                              ),
                              Container(
                                height: Get.height * .05,
                                width: Get.width * .002,
                                decoration:
                                const BoxDecoration(color: Colors.grey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(text: 'Status', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: 'Completed', color: AppColors.greyText),
                                ],
                              ),
                              SmallButton(
                                  title: 'View Detail',
                                  height: Get.height * .04,
                                  width: Get.width * .22,
                                  buttonColor: AppColors.yellowColor,
                                  titleColor: AppColors.whiteText,
                                  onPress: () {}),
                              Container(
                                height: Get.height * .04,
                                width: Get.width * .1,
                                decoration: BoxDecoration(
                                    color:
                                    AppColors.redButton,
                                    borderRadius:
                                    BorderRadius.circular(
                                        3)),
                                child: Icon(
                                  Icons.delete,
                                  color: AppColors.whiteColor,
                                  size: 28,
                                ),
                              ),

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

              SizedBox(
                height: Get.height * .02,
              ),
              Text14Medium(text: '21-March-2022', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              Container(
                height: Get.height * .35,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: Get.height * .08,
                                width: Get.width * .08,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.bgColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text10Bold(text: '22', color: AppColors.whiteText,),
                                    Text8(text: 'March', color: AppColors.whiteText)
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(text:
                                  'Job 01', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: 'Area Name', color: AppColors.greyText),
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
                                  Text10Bold(text: '10AM-12PM', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: '2 hours', color: AppColors.greyText),
                                ],
                              ),
                              Container(
                                height: Get.height * .05,
                                width: Get.width * .002,
                                decoration:
                                const BoxDecoration(color: Colors.grey),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text10Bold(text: 'Status', color: AppColors.blackText),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  Text8(text: 'Completed', color: AppColors.greyText),
                                ],
                              ),
                              SmallButton(
                                  title: 'View Detail',
                                  height: Get.height * .04,
                                  width: Get.width * .22,
                                  buttonColor: AppColors.yellowColor,
                                  titleColor: AppColors.whiteText,
                                  onPress: () {}),
                              Container(
                                height: Get.height * .04,
                                width: Get.width * .1,
                                decoration: BoxDecoration(
                                    color:
                                    AppColors.redButton,
                                    borderRadius:
                                    BorderRadius.circular(
                                        3)),
                                child: Icon(
                                  Icons.delete,
                                  color: AppColors.whiteColor,
                                  size: 28,
                                ),
                              ),

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
