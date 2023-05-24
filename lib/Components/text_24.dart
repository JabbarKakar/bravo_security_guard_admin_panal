import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/app_colors/app_colors.dart';

class Text24 extends StatelessWidget {
  final String text;
  const Text24({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: AppColors.blackText,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold),
    );
  }
}
