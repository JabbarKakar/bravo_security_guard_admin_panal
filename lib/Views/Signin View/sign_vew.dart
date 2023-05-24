
import 'package:brave_security_guard_admin_pannel/Components/text_16_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_24.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/custom_text_field.dart';
import '../../Components/round_button.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../../Utils/app_images/app_images.dart';
import '../Dashboard View/dashboard_view.dart';
import '../Forgot Password View/forget_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .27,
              ),
              const Center(
                child: Text24(text: 'Sign In')
              ),
              SizedBox(
                height: Get.height * .01,
              ),
              Center(
                child: Text16Medium(text: 'Log Back into Your Account', color: AppColors.blackText,)
              ),
              SizedBox(
                height: Get.height * .015,
              ),
              Center(
                child: SizedBox(
                  width: Get.width * .3,
                  child: Divider(
                    color: AppColors.yellowColor,
                    thickness: 5,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * .08,
              ),
              CustomTextField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  onFieldSubmittedValue: (value){},
                  keyBoardType: TextInputType.emailAddress,
                  obscureText: false,
                hint: 'Email Address',
              ),
              SizedBox(
                height: Get.height * .01,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Get.to(const ForgetView()),
                  child: Text16Medium(text: 'Forgot Password', color: AppColors.blackText,)
                ),
              ),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: passwordController,
                focusNode: passwordFocusNode,
                onFieldSubmittedValue: (value){},
                keyBoardType: TextInputType.emailAddress,
                obscureText: true,
                hint: 'Password',
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              RoundButton(title: 'SIGN IN', onPress: (){
                Get.to(() => const DashboardView());

              }),
              SizedBox(
                height: Get.height * .015,
              ),
              Center(
                child: Text16Medium(text: 'Or Continue With', color: AppColors.blackText,)
              ),
              SizedBox(
                height: Get.height * .02,
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
                height: Get.height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text16Medium(text: "Don't have an account?", color: AppColors.greyText,
                  ),
                  SizedBox(
                    width: Get.width * .005.w,
                  ),
                  GestureDetector(
                    onTap: () {
                     // Get.to(const SignUpView());
                    },
                    child: Text16Bold(text: 'Sign Up', color: AppColors.blackText,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
