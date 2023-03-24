import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/circle_icon_button.dart';
import 'package:metro_merchant/views/screens/auth/otp/screen_widget/otp_timer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                left: Dimensions.space15, right: Dimensions.space15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone verification",
                      style: regularDefault.copyWith(color: AppColors.colorBlack1),
                    ),
                    const SizedBox(height: Dimensions.space5),
                    Text(
                      "Enter your OTP code",
                      style: boldHeadingSmall.copyWith(color: AppColors.colorBlack),
                    ),
                    const SizedBox(height: Dimensions.space8),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Enter the 5-digit code sent to you at\n",
                            style: semiBoldDefault.copyWith(color: AppColors.colorBlack400)
                          ),
                          TextSpan(
                              text: "+880 1791635898. ",
                              style: semiBoldDefault.copyWith(color: AppColors.colorBlack)
                          ),
                          TextSpan(
                              text: "Did you enter the correct number?",
                              style: semiBoldDefault.copyWith(color: AppColors.colorGreen)
                          )
                        ]
                      ),
                    ),
                    const SizedBox(height: Dimensions.space24),
                    Text(
                      "Enter verification code",
                      style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
                    ),
                    const SizedBox(height: Dimensions.space20),
                    PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: regularDefault.copyWith(color: AppColors.secondaryColor900),
                      length: 6,
                      textStyle: regularLarge.copyWith(color: AppColors.primaryColor),
                      obscuringCharacter: '*',
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          borderWidth: 1,
                          borderRadius: BorderRadius.circular(5),
                          inactiveColor:  AppColors.fieldDisableBorderColor,
                          inactiveFillColor: AppColors.transparentColor,
                          activeFillColor: AppColors.transparentColor,
                          activeColor: AppColors.secondaryColor900,
                          selectedFillColor: AppColors.screenBgColor,
                          selectedColor: AppColors.secondaryColor900,
                      ),
                      cursorColor: AppColors.colorBlack,
                      animationDuration:
                      const Duration(milliseconds: 100),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      beforeTextPaste: (text) {
                        return true;
                      },
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: Dimensions.space20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OtpTimer(
                          duration: 60,
                          onTimeComplete: (){}
                        ),
                        CircleIconButton(
                          icon: Icons.arrow_forward,
                          press: () => Get.toNamed(AppRoute.homeScreen),
                        )
                      ],
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
