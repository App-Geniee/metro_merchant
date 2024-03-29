import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        body: SingleChildScrollView(
          child: Stack(
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
                left: Dimensions.space15,
                right: Dimensions.space15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You have a problem",
                      style: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                    ),
                    const SizedBox(height: Dimensions.space5),
                    Text("Don't worry!", style: boldHeadingSmall.copyWith(color: AppColors.colorBlack)),
                    const SizedBox(height: Dimensions.space30),
                    CustomTextField(
                      labelText: "Phone number",
                      textInputType: TextInputType.number,
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space30),
                    Row(
                      children: [
                        Text("No problem?", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        const SizedBox(width: Dimensions.space5),
                        GestureDetector(
                          onTap: () => Get.toNamed(AppRoute.signInScreen),
                          child: Text(
                            "Login", 
                            style: boldDefault.copyWith(color: AppColors.primaryColor)
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: Dimensions.space30 * 2),
                    CustomButtonWithIcon(
                      text: "Get verification code",
                      icon: Icons.arrow_forward,
                      press: () => Get.toNamed(AppRoute.otpScreen, arguments: [AppRoute.resetPasswordScreen.toString()]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
