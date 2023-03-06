import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_strings.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final IconData icon;
  final String titleText;
  final String previousRoute;
  final Color leadingColor;
  final Color appBarColor;

  const CustomAppBar({
    Key? key,
    required this.icon,
    required this.titleText,
    required this.previousRoute,
    this.leadingColor = AppColors.colorWhite,
    this.appBarColor = AppColors.primaryColor
  }) : super(key: key);


  const CustomAppBar.authentication({
    Key? key,
    required this.icon,
    this.titleText = AppStrings.back,
    required this.previousRoute,
    this.leadingColor = AppColors.colorWhite,
    this.appBarColor = AppColors.primaryColor
  }): super(key: key);

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: appBarColor,
      title: Text(titleText, style: boldLarge.copyWith(color: AppColors.colorWhite)),
      titleSpacing: 0,
      leading: GestureDetector(
        onTap: () => Get.offAndToNamed(previousRoute),
        child: Icon(icon, color: leadingColor, size: 16),
      ),
    );
  }
}
