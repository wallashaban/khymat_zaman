import '../../../core/utils/exports.dart';

class SocialMediaWiget extends StatelessWidget {
  final String image;
  final dynamic onTap;
  const SocialMediaWiget({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 47.h,
        width: 47.w,
        padding: EdgeInsets.all(5.r),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: AppColors.greyColor, blurRadius: 4.r),
          ],
          shape: BoxShape.circle,
          color: AppColors.white,
        ),
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
