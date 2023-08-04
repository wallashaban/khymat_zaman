import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:khymat_zaman/core/routes/app_routes.dart';
import 'package:khymat_zaman/core/routes/routers.dart';
import 'package:khymat_zaman/core/utils/exports.dart';

import 'core/services/service_locator.dart';
import 'core/themes/light_theme.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/dio_helper.dart';
import 'generated/l10n.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  ServiceLocator().init();
  await CashHelper.init();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Flutter Demo',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerate,
        initialRoute: AppRoutes.login,
      ),
    );
  }

  
}
