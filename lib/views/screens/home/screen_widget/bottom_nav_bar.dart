import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/components/bottom_nav/bottom_nav_menu_shape.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectedIndex = 0;
  List imageList = [AppImages.homeIcon, AppImages.orderIcon, AppImages.addIcon, AppImages.historyIcon, AppImages.profileIcon];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space24, vertical: Dimensions.space12),
        decoration: const BoxDecoration(
            color: AppColors.colorWhite,
            boxShadow: [
              BoxShadow(color: AppColors.bottomNavShadowColor, blurRadius: 2, offset: Offset(-2, -2))
            ]
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(imageList.length, (index) => BottomNavMenuShape(
                shapeColor: index == selectedIndex ? AppColors.primaryColor200 : index == 2 ? AppColors.secondaryColor900 : AppColors.transparentColor,
                press: (){
                  onTap(index);
                },
                isSelected: index == selectedIndex ? index == 2 ? false : true : false,
                image: Image.asset(
                    imageList[index],
                    color: index == selectedIndex ? AppColors.bottomNavSelectedColor : index == 2 ? AppColors.colorWhite : AppColors.bottomNavUnSelectedColor,
                    height: 16, width: 16
                )
            ))
        ),
      ),
    );
  }

  void onTap(int index) {
    if (index == 0) {
      if (!(selectedIndex == 0)) {
        Get.toNamed(AppRoute.homeScreen);
      }
    }
    else if (index == 1) {
      if (!(selectedIndex == 1)) {
        Get.toNamed(AppRoute.orderHistoryScreen);
      }
    }
    else if (index == 2) {
      if (!(selectedIndex == 2)) {
        Get.toNamed(AppRoute.createParcelScreen);
      }
    }
    else if (index == 3) {
      if (!(selectedIndex == 3)) {
        Get.toNamed(AppRoute.paymentUpdateScreen);
      }
    }
    else if (index == 4) {
      if (!(selectedIndex == 4)) {
        Get.toNamed(AppRoute.profileScreen);
      }
    }
  }
}
