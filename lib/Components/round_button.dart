import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/app_colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  final Image? image;
  // final Color buttonColor, titleColor;

  const RoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  onPress,
      child: Container(
        height: MediaQuery.of(context).size.height * .065,
        // width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          color: AppColors.yellowColor,
            borderRadius: BorderRadius.circular(50)),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: loading
                    ? CircularProgressIndicator(
                        strokeWidth: 3, color: AppColors.whiteColor)
                    : Text(title,
                        style: GoogleFonts.poppins(textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .02,
                          color: AppColors.blackText,
                        ))
                )),
          ],
        ),
      ),
    );
  }
}
