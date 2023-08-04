import 'package:khymat_zaman/auth_module/presentation_layer/screens/login_screen.dart';
import 'package:khymat_zaman/auth_module/presentation_layer/screens/signup_screen.dart';
import 'package:khymat_zaman/auth_module/presentation_layer/screens/splash_screen.dart';
import 'package:khymat_zaman/core/routes/routers.dart';

import '../../auth_module/presentation_layer/screens/confirm_email_screen.dart';
import '../../auth_module/presentation_layer/screens/find_account_screen.dart';
import '../../auth_module/presentation_layer/screens/new_password_screen.dart';
import '../../auth_module/presentation_layer/screens/select_language_screen.dart';
import '../utils/exports.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashScreen:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case AppRoutes.selectLnaguageScreen:
      return MaterialPageRoute(builder: (_) => const SelectLanguageScreen());
    case AppRoutes.login:
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case AppRoutes.signUp:
      return MaterialPageRoute(builder: (_) => SignUpScreen());
      case AppRoutes.findAccountScreen:
      return MaterialPageRoute(builder: (_) =>  FindAccountScreen());  
      case AppRoutes.confirmEmailScreen:
      return MaterialPageRoute(builder: (_) =>  ConfirmEmailScreen()); 
      case AppRoutes.resetNewPasswordScreen:
      return MaterialPageRoute(builder: (_) =>  NewPasswordScreen());   
    /*  case AppRoutes.resetNewPasswordScreen:
      return MaterialPageRoute(builder: (_) {
        return ResetNewPasswordScreen(
          code: settings.arguments.toString(),
        );
      }); */

    default:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
  }
}
