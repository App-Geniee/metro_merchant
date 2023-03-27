import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Don't worry!",
                      style: boldOverLarge.copyWith(color: AppColors.colorBlack),
                    ),
                    const SizedBox(height: Dimensions.space30),
                    CustomTextField(
                      isPassword: true,
                      isShowSuffixIcon: true,
                      labelText: "New Password",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),
                    CustomTextField(
                      isPassword: true,
                      isShowSuffixIcon: true,
                      labelText: "Confirm password",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space30 * 2.5),
                    CustomButtonWithIcon(
                        text: "Continue",
                        icon: Icons.arrow_forward,
                        press: () => Get.toNamed(AppRoute.homeScreen)
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
