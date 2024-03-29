import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/drawer/drawer_menu_item.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/drawer_button.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space20),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shopix.com.bd",
                style: boldLarge.copyWith(color: AppColors.colorWhite),
              ),
              GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(Icons.clear, color: AppColors.colorWhite, size: 25),
              )
            ],
          ),
        ),
        const SizedBox(height: Dimensions.space15),
        Expanded(
          child: Column(
            children: [
              DrawerMenuItem(
                  imageSrc: AppImages.drawerHomeImage,
                  itemName: "Home",
                  press: () => Get.offAndToNamed(AppRoute.homeScreen)
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerShopImage,
                  itemName: "Shop",
                  press: () => Get.toNamed(AppRoute.allShopScreen)
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerPaymentDetailsImage,
                  itemName: "Payment Details",
                  press: (){}
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerCouponImage,
                  itemName: "Coupon",
                  press: () => Get.toNamed(AppRoute.couponScreen)
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerLiveChatImage,
                  itemName: "Live Chat",
                  press: () => Get.toNamed(AppRoute.liveChatScreen)
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerSettingImage,
                  itemName: "Settings",
                  press: () => Get.toNamed(AppRoute.rateUsScreen)
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerTermsOfDeliveryImage,
                  itemName: "Terms of Delivery",
                  press: (){}
              ),
            ],
          ),
        ),

        Align(
          alignment: FractionalOffset.bottomCenter,
          child: DrawerButton(
            press: () => Get.offAllNamed(AppRoute.signInScreen)
          ),
        )
      ],
    );
  }
}
