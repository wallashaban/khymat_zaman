// ignore_for_file: must_be_immutable

import 'package:khymat_zaman/auth_module/presentation_layer/widgets/or_widet.dart';
import 'package:khymat_zaman/auth_module/presentation_layer/widgets/social_media_widget.dart';
import 'package:khymat_zaman/core/routes/routers.dart';
import 'package:khymat_zaman/core/utils/app_constants.dart';
import 'package:khymat_zaman/core/utils/exports.dart';
import 'package:khymat_zaman/core/widgets/custom_button.dart';
import 'package:khymat_zaman/core/widgets/custom_text.dart';
import 'package:khymat_zaman/core/widgets/custom_text_form_field.dart';

import '../../../generated/l10n.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  var emailController = TextEditingController();
  var fullNameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 24.w, right: 24.w, top: 27.h, bottom: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: S.of(context).create,
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
                      text: S.of(context).titleSignup,
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              Container(
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
                    const Center(
                      child: SocialMediaWiget(
                        image: AppImages.googleImage,
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const OrWidget(),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomText(
                      text: S.of(context).fullName,
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.person_2_outlined,
                      controller: fullNameController,
                      obscureText: false,
                      hintText: S.of(context).fullName,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomText(
                      text: S.of(context).email,
                      size: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomTextFormField(
                      prefix: Icons.email_outlined,
                      controller: emailController,
                      obscureText: false,
                      hintText: S.of(context).emailAddress,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
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
                      prefix: Icons.lock_outline,
                      suffix: Icons.remove_red_eye_outlined,
                      controller: passwordController,
                      obscureText: true,
                      hintText: S.of(context).password,
                      validator: (value) {},
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                              CashHelper.getData(
                                            key: 'reminder',
                                          ) ==
                                          null ||
                                      CashHelper.getData(
                                            key: 'reminder',
                                          ) ==
                                          true
                                  ? Icons.toggle_on
                                  : Icons.toggle_off,
                              size: 55.w,
                              color: AppColors.mainColor),
                        ),
                        CustomText(
                          text: S.of(context).remember,
                          size: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    CustomButton(
                      text: S.of(context).signup,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Center(
                      child: CustomText(
                        text: S.of(context).haveAccount,
                        size: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          AppConstants.navigateTo(
                            context: context,
                            routeName: AppRoutes.login,
                          );
                        },
                        child: CustomText(
                          text: S.of(context).sign,
                          size: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
