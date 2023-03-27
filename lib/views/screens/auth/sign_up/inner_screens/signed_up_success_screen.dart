import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';

class SignedUpSuccessScreen extends StatelessWidget {
  const SignedUpSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(height: MediaQuery.of(context).size.height),
              Positioned(
                top: -350,
                child: Container(
                  height: 550, width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                  ),
                ),
              ),
              Positioned(
                top: Dimensions.space30,
                left: Dimensions.space15,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(Icons.arrow_back, color: AppColors.colorWhite, size: 20),
                    ),
                    const SizedBox(width: Dimensions.space12),
                    Text(
                      "Back",
                      style: boldLarge.copyWith(color: AppColors.colorWhite),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space25 * 3),
                  child: Image.asset(AppImages.appLogo, height: 80, width: 110),
                ),
              ),
              Positioned(
                top: 300,
                left: Dimensions.space15, right: Dimensions.space15,
                child: Column(
                  children: [
                    Image.asset(AppImages.successImage, height: 70, width: 70),
                    const SizedBox(height: Dimensions.space15),
                    Text(
                      "You have successfully\nsigned up",
                      textAlign: TextAlign.center,
                      style: boldOverLarge.copyWith(color: AppColors.colorBlack),
                    ),
                    const SizedBox(height: Dimensions.space8),
                    Text(
                      "Now let’s add your payment method in just\n10 second and get quick approval",
                      textAlign: TextAlign.center,
                      style: semiBoldDefault.copyWith(color: AppColors.colorBlack300, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: Dimensions.space30 * 4),
                    CustomButtonWithIcon(
                      text: "Add new payment method",
                      icon: Icons.arrow_forward,
                      press: () => Get.toNamed(AppRoute.addPaymentMethodScreen),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
