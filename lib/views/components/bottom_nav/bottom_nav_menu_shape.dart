import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class BottomNavMenuShape extends StatelessWidget {

  final Widget image;
  final bool isSelected;
  final VoidCallback press;
  final Color shapeColor;

  const BottomNavMenuShape({
    Key? key,
    required this.image,
    this.isSelected = false,
    required this.press,
    this.shapeColor = AppColors.primaryColor200
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected ? GestureDetector(
      onTap: press,
      child: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Container(
            height: 45, width: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: shapeColor,
              borderRadius: BorderRadius.circular(Dimensions.bottomNavMenuShapeRadius)
            ),
            child: image
          ),
          Positioned(
            bottom: -4,
            left: 15,
            child: Container(
              height: 15, width: 15,
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: AppColors.colorWhite, shape: BoxShape.circle),
              child: Container(
                height: 7.5, width: 7.5,
                decoration: const BoxDecoration(color: AppColors.primaryColor200, shape: BoxShape.circle),
              ),
            ),
          )
        ],
      ),
    ) : GestureDetector(
      onTap: press,
      child: Container(
        height: 45, width: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: shapeColor, borderRadius: BorderRadius.circular(Dimensions.bottomNavMenuShapeRadius)),
        child: image,
      ),
    );
  }
}
