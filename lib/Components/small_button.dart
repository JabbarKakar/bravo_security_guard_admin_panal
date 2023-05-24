import 'package:flutter/material.dart';

import '../Utils/app_colors/app_colors.dart';

class SmallButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  final double height, width;
  final Color buttonColor, titleColor;
  final TextStyle? style;

  const SmallButton(
      {Key? key,
        required this.title,
        this.loading = false,
        required this.height,
        required this.width,
        required this.buttonColor,
        required this.titleColor,
        required this.onPress,
        this.style,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPress,
      child: Container(
        height: height,
         width: width,
        decoration: BoxDecoration(
          color: buttonColor,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                strokeWidth: 3, color: AppColors.whiteColor)
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(iconData,color: AppColors.arrowColor, size: 15,),
                    const SizedBox(width: 5,),
                    Center(
                      child: Text(title,
                      style:  TextStyle(
                        //fontFamily: AppFonts.gilroyBold,
                        fontSize: 14,
                        letterSpacing: .02,
                        color: titleColor,
                      )
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
