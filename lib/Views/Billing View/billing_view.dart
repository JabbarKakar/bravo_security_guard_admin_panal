import 'package:brave_security_guard_admin_pannel/Components/text_14_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/custom_text_field.dart';
import '../../Components/round_button.dart';
import '../../Components/text_14_bold.dart';
import '../../Utils/app_colors/app_colors.dart';

class BillingView extends StatefulWidget {
  const BillingView({Key? key}) : super(key: key);

  @override
  State<BillingView> createState() => _BillingViewState();
}

class _BillingViewState extends State<BillingView> {
  final cardNameController = TextEditingController();
  final cardNumberController = TextEditingController();
  final expiryController = TextEditingController();
  final cvvController = TextEditingController();

  final cardNameFocusNode = FocusNode();
  final cardNumberFocusNode = FocusNode();
  final expiryFocusNode = FocusNode();
  final cvvFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Billing',
          style: TextStyle(
              color: AppColors.whiteText,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color: AppColors.whiteColor,
            )),
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        elevation: 0,
        actions: [
          Icon(
            Icons.message_outlined,
            color: AppColors.yellowColor,
          ),
          SizedBox(
            width: Get.width * .03,
          ),
          Icon(
            Icons.notifications_active_outlined,
            color: AppColors.yellowColor,
          ),
          SizedBox(
            width: Get.width * .03,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'assets/images/profile.jpg',
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .035,
              ),
              Text14Bold(text: 'Your Payment Information', color: AppColors.blackText),
              SizedBox(
                width: Get.width * .15,
                child: Divider(
                  color: AppColors.yellowColor,
                  thickness: 5,
                ),
              ),
              SizedBox(
                height: Get.height * .03,
              ),
              Text14Medium(text: 'Card Name', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: cardNameController,
                focusNode: cardNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Current Password',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'Card Number', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: cardNumberController,
                focusNode: cardNumberFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'New Password',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'Expiry Date', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: expiryController,
                focusNode: expiryFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Confirm Password',
              ),
              Text14Medium(text: 'Cvv', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: cvvController,
                focusNode: cvvFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Enter Code',
              ),
              SizedBox(
                height: Get.height * .025,
              ),
              RoundButton(title: 'Save Password', onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
