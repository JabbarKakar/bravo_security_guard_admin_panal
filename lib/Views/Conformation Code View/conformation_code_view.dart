
import 'package:brave_security_guard_admin_pannel/Components/text_16_medium.dart';
import 'package:brave_security_guard_admin_pannel/Components/text_24.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/custom_text_field.dart';
import '../../Components/round_button.dart';
import '../../Components/text_16_bold.dart';
import '../../Utils/app_colors/app_colors.dart';
import '../New Password Vew/new_passwrod_view.dart';

class ConformationCodeView extends StatefulWidget {
  const ConformationCodeView({super.key});

  @override
  State<ConformationCodeView> createState() => _ForgetViewState();
}

class _ForgetViewState extends State<ConformationCodeView> {
  final confirmationCodeController = TextEditingController();
  final confirmationCodeFocusNode = FocusNode();
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
            child: Text24(text: 'Confirmation Code ',)
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Center(
            child: Text16Medium( text: 'Enter 6 digit code sent to you phone', color: AppColors.blackText,),
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
            height: Get.height * .1,
          ),
          CustomTextField(
              controller: confirmationCodeController,
              focusNode: confirmationCodeFocusNode,
              onFieldSubmittedValue: (newValue){},
              keyBoardType: TextInputType.number,
              obscureText: false,
            hint: 'Confirmation Code',
          ),
          SizedBox(
            height: Get.height * .025,
          ),
          RoundButton(title: 'CONFIRM CODE', onPress: (){
            Get.to(const NewPasswordView());

          }),
          SizedBox(
            height: Get.height * .02,
          ),
          Text16Bold(text: 'CANCEL', color: AppColors.blackText,)
        ]),
      ),
    );
  }
}
