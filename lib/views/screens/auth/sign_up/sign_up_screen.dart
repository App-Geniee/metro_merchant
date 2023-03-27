import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                top: 230,
                left: Dimensions.space15, right: Dimensions.space15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      labelText: "Owner name",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Shop name",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Email",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Page link/website link",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Enter phone number",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Product Category",
                      readOnly: true,
                      controller: TextEditingController(),
                      onChanged: (value){},
                      isShowSuffixIcon: true,
                      isPicker: true,
                      isIcon: true,
                      onSuffixTap: () => Get.toNamed(AppRoute.selectCategoryScreen),
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Pickup address",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),

                    CustomTextField(
                      labelText: "Select Area",
                      readOnly: true,
                      controller: TextEditingController(),
                      onChanged: (value){},
                      isShowSuffixIcon: true,
                      isPicker: true,
                      isIcon: true,
                      onSuffixTap: () => Get.toNamed(AppRoute.selectAreaScreen),
                    ),
                    const SizedBox(height: Dimensions.space25),

                    CustomButtonWithIcon(
                      verticalPadding: Dimensions.space15,
                      horizontalPadding: Dimensions.space15,
                      text: "Create account",
                      icon: Icons.arrow_forward,
                      press: () => Get.toNamed(AppRoute.phoneNumberVerifyScreen)
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
