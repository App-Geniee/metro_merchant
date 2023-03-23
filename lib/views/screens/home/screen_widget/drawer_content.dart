import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                  press: (){}
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerShopImage,
                  itemName: "Shop",
                  press: (){}
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerPaymentDetailsImage,
                  itemName: "Payment Details",
                  press: (){}
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerCouponImage,
                  itemName: "Coupon",
                  press: (){}
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerLiveChatImage,
                  itemName: "Live Chat",
                  press: (){}
              ),
              DrawerMenuItem(
                  imageSrc: AppImages.drawerSettingImage,
                  itemName: "Settings",
                  press: (){}
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
            press: (){}
          ),
        )
      ],
    );
  }
}
