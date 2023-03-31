import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          elevation: 0.7,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
          ),
          titleSpacing: 0,
          title: Text("Back", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Profile", style: boldExtraLarge.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space20),

              CustomTextField(
                labelText: "Name",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space20),
              CustomTextField(
                labelText: "Mobile number",
                textInputType: TextInputType.number,
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space20),
              CustomTextField(
                labelText: "Email address",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 150,
                    child: CustomButton(text: "Save", press: (){}),
                  )
                ],
              ),

              const VerticalWidgetDivider(space: Dimensions.space24, dividerColor: AppColors.colorBlack100),
              const SizedBox(height: Dimensions.space24),

              Text("Change password", style: boldExtraLarge.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space15),
              Text("Set new password", style: boldLarge.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space5),
              Flexible(
                flex: 0,
                child: Text(
                  "Try to create strong password that helps you to keep your account safe.",
                  style: semiBoldSmall.copyWith(color: AppColors.colorBlack600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: Dimensions.space30),
              CustomTextField(
                isShowSuffixIcon: true,
                isPassword: true,
                hintText: "Enter new password",
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space20),
              CustomTextField(
                isShowSuffixIcon: true,
                isPassword: true,
                hintText: "Re-enter new password",
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 150,
                    child: CustomButton(text: "Reset password", press: () => Get.toNamed(AppRoute.otpScreen, arguments: [AppRoute.resetPasswordScreen])),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
