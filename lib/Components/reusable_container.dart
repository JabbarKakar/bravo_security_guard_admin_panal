import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/app_colors/app_colors.dart';

class ReusableContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const ReusableContainer(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .18,
      width: Get.width * .47,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            // Icons.date_range_outlined,
            icon,
            size: 40,
            color: AppColors.yellowIcon,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.blackText),
          ),
          Text(subTitle,
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greyText)),
        ],
      ),
    );
  }
}
