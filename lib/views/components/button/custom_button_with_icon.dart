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
  final double verticalPadding;
  final double horizontalPadding;

  const CustomButtonWithIcon({
    Key? key,
    required this.text,
    required this.icon,
    this.bgColor = AppColors.secondaryColor900,
    this.contentColor = AppColors.colorWhite,
    required this.press,
    this.verticalPadding = Dimensions.space12,
    this.horizontalPadding = Dimensions.space15
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsetsDirectional.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
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
