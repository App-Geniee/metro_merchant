import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/add_payment_method/add_payment_method_screen.dart';
import 'package:metro_merchant/views/screens/auth/forget_password/forget_password_screen.dart';
import 'package:metro_merchant/views/screens/auth/otp/otp_screen.dart';
import 'package:metro_merchant/views/screens/auth/phone_number_verify/phone_number_verify_screen.dart';
import 'package:metro_merchant/views/screens/auth/reset_password/reset_password_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/inner_screens/password_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/inner_screens/select_area_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/inner_screens/select_category_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/inner_screens/select_specific_area.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/inner_screens/signed_up_success_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';
import 'package:metro_merchant/views/screens/create_parcel/create_parcel_screen.dart';
import 'package:metro_merchant/views/screens/credit/credit_transaction_history_screen.dart';
import 'package:metro_merchant/views/screens/home/home_screen.dart';
import 'package:metro_merchant/views/screens/order/edit/edit_parcel_screen.dart';
import 'package:metro_merchant/views/screens/order/order_history/order_history_screen.dart';
import 'package:metro_merchant/views/screens/order/view/view_order_details_screen.dart';
import 'package:metro_merchant/views/screens/payment_details/inner_screen/account_details_screen.dart';
import 'package:metro_merchant/views/screens/payment_details/payment_details_screen.dart';
import 'package:metro_merchant/views/screens/payment_update/payment_update_screen.dart';
import 'package:metro_merchant/views/screens/shop/all_shop/all_shop_screen.dart';
import 'package:metro_merchant/views/screens/shop/create_new_shop/create_new_shop_screen.dart';
import 'package:metro_merchant/views/screens/shop/deactive_shop/deactive_shop_screen.dart';
import 'package:metro_merchant/views/screens/splash/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/splash_screen";

  static const String signInScreen = "/sign_in_screen";
  static const String signUpScreen = "/sign_up_screen";
  static const String selectCategoryScreen = "/select_category_screen";
  static const String selectAreaScreen = "/select_area_screen";
  static const String selectSpecificAreaScreen = "/select_specific_area_screen";

  static const String forgetPasswordScreen = "/forget_password_screen";
  static const String resetPasswordScreen = "/reset_password_screen";

  static const String phoneNumberVerifyScreen = "/phone_number_verify_screen";
  static const String passwordScreen = "/password_screen";
  static const String signedUpSuccessScreen = "/signed_up_success_screen";

  static const String addPaymentMethodScreen = "/add_payment_method_screen";

  static const String otpScreen = "/otp_screen";

  static const String homeScreen = "/home_screen";
  static const String creditTransactionHistoryScreen = "/credit_transaction_history_screen";

  static const String createParcelScreen = "/create_parcel_screen";
  static const String orderHistoryScreen = "/order_history_screen";
  static const String editParcelScreen = "/edit_parcel_screen";
  static const String viewOrderDetailsScreen = "/view_order_details_screen";

  static const String paymentUpdateScreen = "/payment_update_screen";
  static const String paymentDetailsScreen = "/payment_details_screen";
  static const String accountDetailsScreen = "/account_details_screen";

  static const String allShopScreen = "/all_shop_screen";
  static const String createNewShopScreen = "/create_new_shop_screen";
  static const String deactivateShopScreen = "/deactivate_shop_screen";

  static List<GetPage> route = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: signInScreen, page: () => const SignInScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),

    GetPage(name: forgetPasswordScreen, page: () => const ForgetPasswordScreen()),
    GetPage(name: resetPasswordScreen, page: () => const ResetPasswordScreen()),

    GetPage(name: selectCategoryScreen, page: () => const SelectCategoryScreen()),
    GetPage(name: selectAreaScreen, page: () => const SelectAreaScreen()),
    GetPage(name: selectSpecificAreaScreen, page: () => const SelectSpecificAreaScreen()),

    GetPage(name: phoneNumberVerifyScreen, page: () => const PhoneNumberVerifyScreen()),
    GetPage(name: passwordScreen, page: () => const PasswordScreen()),
    GetPage(name: signedUpSuccessScreen, page: () => const SignedUpSuccessScreen()),

    GetPage(name: addPaymentMethodScreen, page: () => const AddPaymentMethodScreen()),

    GetPage(name: otpScreen, page: () => OtpScreen(nextRoute: Get.arguments[0])),

    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: creditTransactionHistoryScreen, page: () => const CreditTransactionHistoryScreen()),

    GetPage(name: createParcelScreen, page: () => const CreateParcelScreen()),
    GetPage(name: orderHistoryScreen, page: () => const OrderHistoryScreen()),
    GetPage(name: editParcelScreen, page: () => const EditParcelScreen()),
    GetPage(name: viewOrderDetailsScreen, page: () => const ViewOrderDetailsScreen()),

    GetPage(name: paymentUpdateScreen, page: () => const PaymentUpdateScreen()),
    GetPage(name: paymentDetailsScreen, page: () => const PaymentDetailsScreen()),
    GetPage(name: accountDetailsScreen, page: () => const AccountDetailsScreen()),

    GetPage(name: allShopScreen, page: () => const AllShopScreen()),
    GetPage(name: createNewShopScreen, page: () => const CreateNewShopScreen()),
    GetPage(name: deactivateShopScreen, page: () => const DeactivateShopScreen()),
  ];
}
