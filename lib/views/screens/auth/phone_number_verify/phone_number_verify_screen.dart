import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class PhoneNumberVerifyScreen extends StatefulWidget {
  const PhoneNumberVerifyScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberVerifyScreen> createState() => _PhoneNumberVerifyScreenState();
}

class _PhoneNumberVerifyScreenState extends State<PhoneNumberVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: Dimensions.space20),
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
                top: 250,
                left: Dimensions.space15, right: Dimensions.space15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, nice to meet you!",
                      style: semiBoldSmall.copyWith(color: AppColors.colorBlack400),
                    ),
                    const SizedBox(height: Dimensions.space5),
                    Text(
                      "Join our platform!",
                      style: boldHeadingSmall.copyWith(color: AppColors.colorBlack),
                    ),
                    const SizedBox(height: Dimensions.space30),
                    CustomTextField(
                      labelText: "Phone number",
                      controller: TextEditingController(),
                      textInputType: TextInputType.number,
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By creating an account, you agree to our ",
                            style: semiBoldDefault.copyWith(color: AppColors.colorBlack)
                          ),
                          TextSpan(
                              text: "Terms\nof Service ",
                              style: boldDefault.copyWith(color: AppColors.colorBlack)
                          ),
                          TextSpan(
                            text: "and ",
                            style: semiBoldDefault.copyWith(color: AppColors.colorBlack)
                          ),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: boldDefault.copyWith(color: AppColors.colorBlack)
                          ),
                        ]
                      ),
                    ),
                    const SizedBox(height: Dimensions.space25 * 3),
                    CustomButtonWithIcon(
                       verticalPadding: Dimensions.space15,
                       horizontalPadding: Dimensions.space15,
                       text: "Get verification code", 
                       icon: Icons.arrow_forward, 
                       press: () => Get.toNamed(AppRoute.otpScreen, arguments: [AppRoute.signUpScreen.toString()])
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
