import '../../../core/utils/exports.dart';
import '../../../core/widgets/custom_text.dart';
import '../../../generated/l10n.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1.h,
          width: MediaQuery.of(context).size.width * 0.39,
          color: AppColors.lineColor,
        ),
        CustomText(
          text: ' ${S.of(context).or} ',
          size: 20.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        Container(
          height: 1.h,
          width: MediaQuery.of(context).size.width * 0.39,
          color: AppColors.lineColor,
        ),
      ],
    );
  }
}
