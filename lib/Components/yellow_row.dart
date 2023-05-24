import 'package:brave_security_guard_admin_pannel/Components/text_10_medium.dart';
import 'package:brave_security_guard_admin_pannel/Utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class YellowRow extends StatelessWidget {
  final String text1, text2, text3, text4;
  const YellowRow(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .045,
      decoration: BoxDecoration(
          color: AppColors.yellowColor, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: GoogleFonts.inter(
                  color: AppColors.blackText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: GoogleFonts.inter(
                  color: AppColors.blackText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text3,
              style: GoogleFonts.inter(
                  color: AppColors.blackText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text4,
              style: GoogleFonts.inter(
                  color: AppColors.blackText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
