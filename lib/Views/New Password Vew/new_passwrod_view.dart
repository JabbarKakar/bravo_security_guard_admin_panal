
import 'package:brave_security_guard_admin_pannel/Components/text_16_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_24.dart';
import 'package:brave_security_guard_admin_pannel/Views/Signin%20View/sign_vew.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/custom_text_field.dart';
import '../../Components/round_button.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _ForgetViewState();
}

class _ForgetViewState extends State<NewPasswordView> {
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final newPasswordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SizedBox(
            height: Get.height * .27,
          ),
          const Center(
            child: Text24(text: 'New Password'),
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Center(
            child: Text16Medium(text:
              'Strong Password Include Number, Letters\nAnd Punctuation Marks', color: AppColors.blackText,),
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Center(
            child: SizedBox(
              width: Get.width * .35,
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
              controller: newPasswordController,
              focusNode: newPasswordFocusNode,
              onFieldSubmittedValue: (newValue){},
              keyBoardType: TextInputType.text,
              obscureText: false,
            hint: 'Password',
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          CustomTextField(
            controller: confirmPasswordController,
            focusNode: confirmPasswordFocusNode,
            onFieldSubmittedValue: (newValue){},
            keyBoardType: TextInputType.text,
            obscureText: false,
            hint: 'Confirm Password',
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          RoundButton(title: 'Reset Password', onPress: (){
            Get.to(const SignInView());

          }),
          SizedBox(
            height: Get.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text16Medium(text:
                'Don\'t Reset Password?', color: AppColors.greyText,
              ),
              SizedBox(
                width: Get.width * .012,
              ),
              InkWell(
                  onTap: (){
                    Get.to(const SignInView());
                  },
                  child: Text16Bold(text: 'Sign In', color: AppColors.blackText,))
            ],
          )
        ]),
      ),
    );
  }
}
