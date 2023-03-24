import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';
import 'package:metro_merchant/views/screens/create_parcel/create_parcel_screen.dart';
import 'package:metro_merchant/views/screens/home/home_screen.dart';
import 'package:metro_merchant/views/screens/order/order_history/order_history_screen.dart';
import 'package:metro_merchant/views/screens/splash/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/splash_screen";

  static const String signInScreen = "/sign_in_screen";

  static const String homeScreen = "/home_screen";
  static const String createParcelScreen = "/create_parcel_screen";
  static const String orderHistoryScreen = "/order_history_screen";

  static List<GetPage> route = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),

    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: createParcelScreen, page: () => const CreateParcelScreen()),
    GetPage(name: orderHistoryScreen, page: () => const OrderHistoryScreen()),
  ];
}
