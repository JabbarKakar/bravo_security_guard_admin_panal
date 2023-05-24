import 'package:brave_security_guard_admin_pannel/Components/text_16_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_24.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/round_button.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../../Utils/app_images/app_images.dart';
import '../Signin View/sign_vew.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.whiteColor
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height * .27.h,
                  ),
                  const Text24(text: 'Hello there!'),
                  SizedBox(
                    height: Get.height * .005.h,
                  ),
                  Text16Medium(text: "Let's Sing Up To Continue", color: AppColors.blackText,),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  SizedBox(
                    width: Get.width * .35,
                    child: Divider(
                      color: AppColors.yellowColor,
                      thickness: 5,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Get.height * .055,
                        width: Get.width * .4,
                        decoration: BoxDecoration(
                            color: AppColors.redButton,
                            borderRadius: const BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.googleIcon,
                              ),
                              Text16Medium(text: 'GOOGLE', color: AppColors.whiteText,)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * .055,
                        width: Get.width * .4,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                AppImages.facebookIcon,
                              ),
                              Text16Medium(text: 'FACEBOOK', color: AppColors.whiteText,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * .025,
                  ),
                  Text16Bold(text: 'Sign Up with', color: AppColors.blackText,),
                  SizedBox(
                    height: Get.height * .015,
                  ),
                  RoundButton(title: 'SIGN UP WITH EMAIL OR PHONE NUMBER', onPress: (){
                    Get.to(() => const SignInView());
                  }),
                  SizedBox(
                    height: Get.height * .022,
                  ),
                  const Text(
                    'Already have an account? Sign In ',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
