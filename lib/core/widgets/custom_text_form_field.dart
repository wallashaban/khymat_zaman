// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final IconData? suffix;
  final IconData? prefix;
  final controller;
  final bool obscureText;
  final String? hintText;
  dynamic validator;
  dynamic onTap;
  dynamic sufixPressed;
  dynamic prefixPressed;
  final double width;
  final keyBoardType;
  final bool enabled;
  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.obscureText,
    this.sufixPressed,
    this.hintText,
    this.keyBoardType = TextInputType.text,
    this.labelText,
    this.suffix,
    required this.validator,
    this.onTap,
    this.width = double.infinity,
    this.prefixPressed,
    this.prefix,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.black,
      controller: controller,
      keyboardType: keyBoardType,
      onTap: onTap,
      obscureText: obscureText,
      enabled: enabled,
      autocorrect: true,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,

        // contentPadding: EdgeInsets.only(right: 16.r),
        prefixIcon: Icon(
          prefix,
          size: 24.r,
        ),
        suffixIcon: IconButton(
          onPressed: sufixPressed,
          icon: Icon(
            suffix,
            size: 24.r,
          ),
        ),
      ),
    );
  }
}
