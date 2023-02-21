import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget{
  final bool needActions;
  final String title;
  final bool isIcon;
  final String backIcon;
  final Color appBarColor;
  final Color contentColor;
  final List<Widget>? actions;

  const AuthAppBar({
    Key? key,
    this.needActions = false,
    required this.title,
    required this.backIcon,
    this.isIcon = false,
    this.appBarColor = AppColors.primaryColor,
    this.contentColor = AppColors.colorWhite,
    this.actions
  }) : super(key: key);

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
  
  @override
  Widget build(BuildContext context) {
    return needActions ? AppBar(
      elevation: 0,
      backgroundColor: appBarColor,
      title: Text(
        title,
        style: boldLarge.copyWith(color: contentColor),
      ),
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: isIcon ? Icon(
          Icons.arrow_back,
          color: contentColor,
          size: 16
        ) : Image.asset(
          backIcon,
          color: contentColor,
          height: 16,
          width: 16
        )
      ),
      actions: actions,
    ) : AppBar(
      elevation: 0,
      backgroundColor: appBarColor,
      title: Text(
        title,
        style: boldLarge.copyWith(color: contentColor),
      ),
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: isIcon ? Icon(
          Icons.arrow_back,
          color: contentColor,
          size: 16
        ) : Image.asset(
          backIcon,
          color: contentColor,
          height: 16,
          width: 16
        )
      ),
    );
  }
}
