import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Text14Medium extends StatelessWidget {
  final String text;
  final Color? color;
  const Text14Medium({Key? key, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(color: color,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600)
      ),
    );
  }
}
