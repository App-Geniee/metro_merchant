import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_strings.dart';
import 'package:metro_merchant/views/prefs/prefs.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(MyPrefs());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 200),
      navigatorKey: Get.key,
      home: SignInScreen(),

    );
  }
}
