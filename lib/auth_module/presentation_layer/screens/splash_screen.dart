import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:khymat_zaman/auth_module/presentation_layer/screens/select_language_screen.dart';

import '../../../core/utils/exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 260.w,

      nextScreen:const SelectLanguageScreen(),
      splash: Image.asset(
        AppImages.splashImage,
         height: 231.h,
        width: 231.w,
       // fit: BoxFit.cover,
      ),
    
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,

      //backgroundColor: AppColors.splashColor,
    );
  }
}
