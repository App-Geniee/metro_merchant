import 'package:flutter/services.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';

class SetSystemUtils{

  static void splashScreenUtil(){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.screenBgColor,
        systemNavigationBarIconBrightness: Brightness.dark
      )
    );
  }
}