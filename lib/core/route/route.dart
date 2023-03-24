import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';
import 'package:metro_merchant/views/screens/create_parcel/create_parcel_screen.dart';
import 'package:metro_merchant/views/screens/credit/credit_transaction_history_screen.dart';
import 'package:metro_merchant/views/screens/home/home_screen.dart';
import 'package:metro_merchant/views/screens/order/edit/edit_parcel_screen.dart';
import 'package:metro_merchant/views/screens/order/order_history/order_history_screen.dart';
import 'package:metro_merchant/views/screens/shop/all_shop/all_shop_screen.dart';
import 'package:metro_merchant/views/screens/shop/create_new_shop/create_new_shop_screen.dart';
import 'package:metro_merchant/views/screens/shop/deactive_shop/deactive_shop_screen.dart';
import 'package:metro_merchant/views/screens/splash/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/splash_screen";

  static const String signInScreen = "/sign_in_screen";

  static const String homeScreen = "/home_screen";
  static const String creditTransactionHistoryScreen = "/credit_transaction_history_screen";

  static const String createParcelScreen = "/create_parcel_screen";
  static const String orderHistoryScreen = "/order_history_screen";
  static const String editParcelScreen = "/edit_parcel_screen";

  static const String allShopScreen = "/all_shop_screen";
  static const String createNewShopScreen = "/create_new_shop_screen";
  static const String deactivateShopScreen = "/deactivate_shop_screen";

  static List<GetPage> route = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),

    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: creditTransactionHistoryScreen, page: () => const CreditTransactionHistoryScreen()),

    GetPage(name: createParcelScreen, page: () => const CreateParcelScreen()),
    GetPage(name: orderHistoryScreen, page: () => const OrderHistoryScreen()),
    GetPage(name: editParcelScreen, page: () => const EditParcelScreen()),

    GetPage(name: allShopScreen, page: () => const AllShopScreen()),
    GetPage(name: createNewShopScreen, page: () => const CreateNewShopScreen()),
    GetPage(name: deactivateShopScreen, page: () => const DeactivateShopScreen()),
  ];
}
