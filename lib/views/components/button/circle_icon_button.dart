import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';

class CircleIconButton extends StatelessWidget {
  
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final VoidCallback press;
  
  const CircleIconButton({
    Key? key,
    required this.icon,
    required this.press,
    this.bgColor = AppColors.secondaryColor900,
    this.iconColor = AppColors.colorWhite
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50, width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
        child: Icon(icon, color: iconColor, size: 25),
      ),
    );
  }
}
