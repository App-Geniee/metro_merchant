import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';
import 'package:metro_merchant/views/screens/splash/splash_screen.dart';

class AppRoute{

  static const String splashScreen = "/splash_screen";

  static const String signInScreen = "/sign_in_screen";


  static List<GetPage> route = [

    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),
  ];
}