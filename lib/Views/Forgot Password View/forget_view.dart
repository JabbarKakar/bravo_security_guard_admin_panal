
import 'package:brave_security_guard_admin_pannel/Components/text_16_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_24.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/custom_text_field.dart';
import '../../Components/round_button.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../Conformation Code View/conformation_code_view.dart';

class ForgetView extends StatefulWidget {
  const ForgetView({super.key});

  @override
  State<ForgetView> createState() => _ForgetViewState();
}

class _ForgetViewState extends State<ForgetView> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
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
            child: Text24(text: 'Forgot Password',),
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Center(
            child: Text16Medium(text: 'Please enter your email or Phone', color: AppColors.blackText,)
          ),
          SizedBox(
            height: Get.height * .015,
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
            height: Get.height * .1,
          ),
          CustomTextField(
              controller: emailController,
              focusNode: emailFocusNode,
              onFieldSubmittedValue: (newValue){},
              keyBoardType: TextInputType.text,
              hint: 'Email or Phone Number',
              obscureText: false),
          SizedBox(
            height: Get.height * .025,
          ),
          RoundButton(title: 'Continue', onPress: (){
            Get.to(const ConformationCodeView());

          }),
          SizedBox(
            height: Get.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text16Medium(text: 'Don\'t have an account?', color: AppColors.greyText,),
              SizedBox(
                width: Get.width * .01,
              ),
              InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Text16Bold(text: 'Cancel', color: AppColors.blackText,)),

            ],
          )
        ]),
      ),
    );
  }
}
