// ignore_for_file: must_be_immutable

import 'package:khymat_zaman/core/utils/exports.dart';
import 'package:khymat_zaman/core/widgets/custom_button.dart';
import 'package:khymat_zaman/core/widgets/custom_text.dart';
import '../../../core/routes/routers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/widgets/otp_field.dart';
import '../../../generated/l10n.dart';

class ConfirmEmailScreen extends StatelessWidget {
  ConfirmEmailScreen({super.key});
  var otp1 = TextEditingController();
  var otp2 = TextEditingController();
  var otp3 = TextEditingController();
  var otp4 = TextEditingController();
  var otp5 = TextEditingController();
  var otp6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
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
                          text: S.of(context).confirm,
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
                          text: S.of(context).writeCode,
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
                          BoxShadow(
                              color: AppColors.greyColor, blurRadius: 4.r),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.r),
                          topRight: Radius.circular(50.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OtpField(
                                controller: otp1,
                              ),
                              OtpField(
                                controller: otp2,
                              ),
                              OtpField(
                                controller: otp3,
                              ),
                              OtpField(
                                controller: otp4,
                              ),
                              OtpField(
                                controller: otp5,
                              ),
                              OtpField(
                                controller: otp6,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                          CustomButton(
                            text: S.of(context).send,
                            onPressed: () {
                              AppConstants.navigateTo(
                                context: context,
                                routeName: AppRoutes.resetNewPasswordScreen,
                              );
                            },
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: S.of(context).resend,
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                              CustomText(
                                text: '01:26',
                                size: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.sp,
                          )
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
