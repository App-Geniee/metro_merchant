import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/core/utils/set_system_utils.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    SetSystemUtils.splashScreenUtil();
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  late int selectedBanner = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: 4,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        viewportFraction: 2,
                        aspectRatio: 0.7,
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        reverse: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            selectedBanner = index;
                          });
                        }
                    ),
                    itemBuilder: (context, itemIndex, pageViewIndex){
                      return Image.asset(
                        AppImages.splashImage,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width
                      );
                    },
                  ),
                  const SizedBox(height: Dimensions.space24),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators(4, selectedBanner)
                  ),
                  const SizedBox(height: Dimensions.space24),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
                    child: CustomButtonWithIcon(
                      text: "Login with phone",
                      icon: Icons.arrow_forward,
                      press: () => Get.toNamed(AppRoute.signInScreen)
                    ),
                  ),
                  const SizedBox(height: Dimensions.space24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or",
                        style: boldDefault.copyWith(color: AppColors.colorBlack),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(AppRoute.phoneNumberVerifyScreen),
                        child: Text(
                          "create account",
                          textAlign: TextAlign.center,
                          style: boldDefault.copyWith(color: AppColors.colorBlack),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                top: 50,
                left: Dimensions.space15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, nice to meet you!", style: semiBoldDefault.copyWith(color: AppColors.colorWhite)),
                    const SizedBox(height: Dimensions.space5),
                    Text("Get a new experience", style: boldHeadingSmall.copyWith(color: AppColors.colorWhite)),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }

  List<Widget> indicators(page, currentIndex) {
    return List<Widget>.generate(4, (index) {
      return Container(
        margin: const EdgeInsets.only(right: Dimensions.space8),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: currentIndex == index ? AppColors.secondaryColor900 : AppColors.secondaryColor400,
          shape: BoxShape.circle
        ),
      );
    });
  }
}
