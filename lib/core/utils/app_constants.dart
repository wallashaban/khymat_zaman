import 'package:connectivity_plus/connectivity_plus.dart';

import '../widgets/custom_text.dart';
import 'app_strings.dart';
import 'exports.dart';
import 'package:intl/intl.dart';

class AppConstants {
  static const String baseUrl = 'https://baby-health-care.sonicar.tech/api/';

  //auth
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  static const String loginWithGoogle = 'auth/login/callback';
  static const String loginWithFacebook = 'auth/login/callback';

  /* static DropdownMenuItem buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: CustomText(
        text: item,
        color: AppColors.darkColor,
        size: 16.sp,
        fontWeight: FontWeight.bold,
      )); */
  static navigateReplacement(
      {required BuildContext context, required String routeName, arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  static navigateTo(
      {required BuildContext context, required String routeName, arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static Future showDate(context) async {
    // final format = DateFormat("yyyy-MM-dd");
    String? date;
    /*  DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(2100),
          ); */
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 10),
      lastDate: DateTime(DateTime.now().year + 10),
    ).then((value) async {
      if (value != null) {
        var month = value.month.toInt() < 10 ? '0${value.month}' : value.month;
        var day = value.day.toInt() < 10 ? '0${value.day}' : value.day;
        date = '${value.year}-$month-$day';
      }
    });
    return date;
  }

  static showSnackbar(
      {required BuildContext context, required String content}) async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shadowColor: Colors.grey[400]!,
              elevation: 123,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.greyColor),
                  borderRadius: BorderRadius.circular(20.r)),
              content: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: content,
                      size: 14.sp,
                      maxLines: 7,
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ),
            ));
  }

  static Future showDialoog(
    context, {
    id,
    presId,
    bool isPrescription = false,
    bool isTooth = false,
    bool isReminder = false,
    bool isDisease = false,
  }) =>
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  //padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        30.r,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400]!,
                            blurRadius: 4,
                            blurStyle: BlurStyle.outer),
                      ],
                      color: AppColors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AlertDialog(
                        backgroundColor: AppColors.white,
                        elevation: 0.0,
                        content: CustomText(
                          text: AppStrings.yes,
                          size: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        actions: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));

  static checkConnectivity() async {
    return await Connectivity().checkConnectivity();
  }

  static bool isArabic() {
    return Intl.getCurrentLocale() == 'ar';
  }

  static checkInternet(context) async {
    if (await checkConnectivity() == ConnectivityResult.none) {
      showSnackbar(
        context: context,
        content: AppStrings.yes,
      );
    }
  }

  /* static Future userExistTeethOrNot(bool isExist, context) async {
    if (await checkConnectivity() == ConnectivityResult.none) {
      showSnackbar(
        context: context,
        content: AppStrings.yes,
      );
    } else {
      var data = Hive.box('teethCach').keys;
      debugPrint('data $data');
      for (var element in data) {
        if (element.contains(CashHelper.getData(key: 'id').toString())) {
          isExist = true;
        }
      }
      var cubit = BlocProvider.of<TeethDevelopmentCubit>(context);
      CashHelper.saveData(
          key: 'teethSaved ${CashHelper.getData(key: 'id')}', value: true);

      if (!isExist) {
        await cubit.getAllteeth().then((value) {
          for (var element in cubit.allTeeth!) {
            Hive.box('teethCach').put(
              'teeth ${element.id} ${CashHelper.getData(key: 'id')}',
              TeethCach(
                id: element.id,
                teeth: element.teethName,
                appearanceDate: element.apperenceDate,
                ageInMonth: element.ageInMonths,
                ageInYears: element.ageInYears,
              ),
            );
          }
        });
      }
    }
  }
 */
}
