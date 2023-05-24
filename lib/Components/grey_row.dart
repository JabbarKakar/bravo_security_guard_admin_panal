import 'package:brave_security_guard_admin_pannel/Components/small_button.dart';
import 'package:brave_security_guard_admin_pannel/Utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GreyRow extends StatelessWidget {
  final String text1, text2, text3;
  final String image;
  final Widget? widget;
  const GreyRow(
      {Key? key,
        required this.text1,
        required this.text2,
        required this.text3,
        required this.image,
        this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .053,
      decoration: BoxDecoration(
        // border: Border.all(color: AppColors.border, width: .5),
          color: AppColors.rowBgColor, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(
                image,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: GoogleFonts.inter(
                      color: AppColors.blackText,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * .003,),
                Text(
                  text2,
                  style: GoogleFonts.inter(
                      color: AppColors.greyText,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * .034,
              child: VerticalDivider(
                color: AppColors.border,
              ),
            ),
            Text(
              text3,
              style: GoogleFonts.inter(
                  color: AppColors.greyText,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: Get.height * .034,
              child: VerticalDivider(
                color: AppColors.border,
              ),
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
      ),
    );
  }
}
