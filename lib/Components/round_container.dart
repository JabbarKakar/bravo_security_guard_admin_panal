import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/app_colors/app_colors.dart';

class RoundContainer extends StatelessWidget {
  final VoidCallback onTap;

  const RoundContainer({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .085,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.border, width: .001),
          borderRadius: BorderRadius.circular(100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    height: Get.height * .07,
                    width: Get.width * .4,
                    decoration: BoxDecoration(
                        color: AppColors.roundContainer,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                        child: Text(
                      'Choose A File',
                      style: TextStyle(color: AppColors.greyText, fontSize: 14),
                    ))
                  )
                ),
                Text(
                  'No file Choose',
                  style: TextStyle(color: AppColors.greyText, fontSize: 14),
                ),
                SizedBox(
                  width: Get.width * .0,
                )
              ]
            )
          )
        ]
      )
    );
  }
}
