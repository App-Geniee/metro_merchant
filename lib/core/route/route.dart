import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/splash/splash_screen.dart';

class Route{

  static const String splashScreen = "/splash_screen";


  static List<GetPage> route = [

    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}