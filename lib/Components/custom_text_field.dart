import 'package:flutter/material.dart';

import '../Utils/app_colors/app_colors.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmittedValue;
  final FormFieldValidator? onValidator;
  final VoidCallback? onTap;
  final TextStyle? fontStyle;

  final TextInputType keyBoardType;
  final String? hint;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? enable;
  final bool autoFocus;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.focusNode,
      required this.onFieldSubmittedValue,
        this.onTap,
      required this.keyBoardType,
      required this.obscureText,
      this.hint,
        this.fontStyle,
      this.prefixIcon,
      this.suffixIcon,
      this.enable,
        this.onValidator,
      this.autoFocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        height: height * .1,
        width: double.infinity,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmittedValue,
          validator: onValidator,

          enabled: enable,
          onTap: onTap,
          keyboardType: keyBoardType,
          cursorColor: AppColors.bgColor,
          style: TextStyle(color: AppColors.blackText),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.greyText),
            contentPadding: const EdgeInsets.all(18),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: AppColors.border, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: AppColors.border, width: 1),
                borderRadius: BorderRadius.circular(50)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:
                BorderSide(color: AppColors.errorBorder, width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                    color: AppColors.border, width: 1)),
          ),
        ),
      ),
    );
  }
}
