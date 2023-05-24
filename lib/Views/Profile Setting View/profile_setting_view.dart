import 'package:brave_security_guard_admin_pannel/Components/large_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/custom_text_field.dart';
import '../../Components/round_button.dart';
import '../../Components/small_button.dart';
import '../../Components/text_14_bold.dart';
import '../../Components/text_14_medium.dart';
import '../../Utils/app_colors/app_colors.dart';

class ProfileSettingView extends StatefulWidget {
  const ProfileSettingView({Key? key}) : super(key: key);

  @override
  State<ProfileSettingView> createState() => _ProfileSettingViewState();
}

class _ProfileSettingViewState extends State<ProfileSettingView> {
  final firstNameController = TextEditingController();
  final lastNmeController = TextEditingController();
  final userNameController = TextEditingController();
  final genderController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final aboutMeController = TextEditingController();

  final firstNameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();
  final genderFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final aboutMeFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Setting',
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
          SmallButton(
              title: 'Check In',
              height: Get.height * .027,
              width: Get.width * .22,
              buttonColor: AppColors.redButton,
              titleColor: AppColors.whiteText,
              onPress: () {}),
          SizedBox(
            width: Get.width * .03,
          ),
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .035,
              ),
              Text14Bold(text: 'Profile Setting', color: AppColors.blackText),
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
              Text14Medium(text: 'First Name', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: firstNameController,
                focusNode: firstNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'John',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'Last Name', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: lastNmeController,
                focusNode: lastNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'smith',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'User Name', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: userNameController,
                focusNode: userNameFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'John Smith22',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'Gender', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: genderController,
                focusNode: genderFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Male',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'Email Address', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: emailController,
                focusNode: emailFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: 'Johnsmith22@gmail.com',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'Phone Number', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),
              CustomTextField(
                controller: phoneController,
                focusNode: phoneFocusNode,
                onFieldSubmittedValue: (newValue) {},
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: '123456678',
              ),
              SizedBox(
                height: Get.height * .017,
              ),
              Text14Medium(text: 'About Me', color: AppColors.blackText),
              SizedBox(
                height: Get.height * .01,
              ),

              LargeTextField(
                  controller: aboutMeController,
                  focusNode: aboutMeFocusNode,
                  maxLines: 6,
                hint: 'Write about yourself....',
                  onFieldSubmittedValue: (newValue){},
                  keyBoardType: TextInputType.text,
                  obscureText: false,

              ),
              SizedBox(
                height: Get.height * .08,
              ),
              RoundButton(title: 'Save Password', onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
