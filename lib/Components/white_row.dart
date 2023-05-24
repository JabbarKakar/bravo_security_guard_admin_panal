import 'package:brave_security_guard_admin_pannel/Utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteRow extends StatelessWidget {
  final String text1, text2, text3, text4;
  final String image;
  const WhiteRow(
      {Key? key,
        required this.text1,
        required this.text2,
        required this.text3,
        required this.text4,
        required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * .003),
      child: Container(
        height: Get.height * .045,
        decoration: BoxDecoration(
         // border: Border.all(color: AppColors.border, width: .5),
            color: AppColors.whiteColor, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text1,
                  style: GoogleFonts.inter(
                      color: AppColors.greyText,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: Get.height * .034,
                  child: VerticalDivider(
                    color: AppColors.border,
                  ),
                ),
                Image.asset(image,

                ),
                Text(
                  text2,
                  style: GoogleFonts.inter(
                      color: AppColors.greyText,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
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
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: Get.height * .034,
                  child: VerticalDivider(
                    color: AppColors.border,
                  ),
                ),
                Text(
                  text4,
                  style: GoogleFonts.inter(
                      color: AppColors.greyText,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
