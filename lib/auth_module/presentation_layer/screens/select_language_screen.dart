import 'package:khymat_zaman/core/utils/exports.dart';
import 'package:khymat_zaman/core/widgets/custom_text.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_button.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 154.h),
            Image.asset(
              AppImages.splashImage,
              height: 231.h,
              width: 231.w,
            ),
            SizedBox(height: 40.h),
            CustomText(
              text: AppStrings.selectLanguage,
              size: 20.sp,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            CustomButton(
                onPressed: () {},
                text: AppStrings.arabic,
                size: 16.sp,
                fontWeight: FontWeight.w500),
            SizedBox(height: 20.h),
            CustomButton(
                onPressed: () {},
                text: AppStrings.english,
                size: 16.sp,
                fontWeight: FontWeight.w500),
          ],
        ),
      )),
    );
  }
}
