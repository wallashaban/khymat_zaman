// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';

class OtpField extends StatelessWidget {
  final controller;
  const OtpField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 46.h,
        width: 45.w,
        child: TextFormField(
          controller: controller,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
      /*     decoration: InputDecoration(
               enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.lineColor, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.lineColor, width: 1),
              )
              ),
       */    cursorHeight: 16.h,
          cursorColor: AppColors.black,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontSize: 14.sp, color: AppColors.black),
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          textAlign: TextAlign.center,
        ));
  }
}
