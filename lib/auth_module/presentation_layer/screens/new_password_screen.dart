// ignore_for_file: must_be_immutable

import 'package:khymat_zaman/core/utils/exports.dart';
import 'package:khymat_zaman/core/widgets/custom_button.dart';
import 'package:khymat_zaman/core/widgets/custom_text.dart';
import 'package:khymat_zaman/core/widgets/custom_text_form_field.dart';

import '../../../generated/l10n.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child:    Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 27.h, bottom: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.white,
                      size: 24.r,
                    ),
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  CustomText(
                    text: S.of(context).newPassword,
                    size: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                  Container(
                    height: 3.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  SizedBox(height: 11.h),
                  CustomText(
                    text: S.of(context).CreatePassword,
                    size: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 38.h,
                  left: 24.w,
                  right: 24.w,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(color: AppColors.greyColor, blurRadius: 4.r),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: S.of(context).password,
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextFormField(
                      suffix: Icons.remove_red_eye_outlined,
                      prefix: Icons.lock_outline,
                      controller: passwordController,
                      obscureText: true,
                      hintText: S.of(context).emailAddress,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomText(
                      text: S.of(context).confirmPassword,
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      hintText: S.of(context).emailAddress,
                      validator: (value) {},
                      suffix: Icons.remove_red_eye_outlined,
                      prefix: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    CustomButton(
                      text: S.of(context).save,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
    
            )
          ],
        ),
       ),
    );
  }
}
