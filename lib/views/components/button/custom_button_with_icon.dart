import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CustomButtonWithIcon extends StatelessWidget {

  final String text;
  final IconData icon;
  final Color bgColor;
  final Color contentColor;
  final VoidCallback press;

  const CustomButtonWithIcon({
    Key? key,
    required this.text,
    required this.icon,
    this.bgColor = AppColors.secondaryColor900,
    this.contentColor = AppColors.colorWhite,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: boldDefault.copyWith(color: contentColor, letterSpacing: 0.5),
            ),
            Icon(icon, color: contentColor, size: 20)
          ],
        ),
      ),
    );
  }
}
