// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final int maxLines;
  final TextAlign textAlign;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final VoidCallback? onPressed;
  final bool isLoading;
  final Color? btnColor;
  double width;
  CustomButton({
    Key? key,
    this.text,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.color,
    this.size,
    this.fontWeight,
    this.onPressed,
    this.btnColor,
    this.isLoading = false,
    this.width = double.infinity, // todo fixed width XX
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            shadowColor: AppColors.greyColor),
        child: isLoading
            ? CircularProgressIndicator(
                color: AppColors.white,
              )
            : CustomText(
                text: text!,
              ),
      ),
    );
  }
}
