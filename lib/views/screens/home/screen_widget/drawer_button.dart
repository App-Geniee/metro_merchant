import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/components/text/drawer_item_text.dart';

class DrawerButton extends StatelessWidget {

  final VoidCallback press;

  const DrawerButton({Key? key, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: Dimensions.space15, right: Dimensions.space15, bottom: Dimensions.space20),
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8, horizontal: Dimensions.space12),
        decoration: BoxDecoration(
            color: AppColors.transparentColor,
            borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5),
            border: Border.all(color: AppColors.primaryColor, width: 1)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const DrawerItemText(text: "Logout"),
            Image.asset(AppImages.drawerLogoutImage, color: AppColors.colorBlack, height: 20, width: 20)
          ],
        ),
      ),
    );
  }
}
