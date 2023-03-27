import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback press;
  final Color bgColor;
  final Color textColor;
  final bool isOutlineBorder;

  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
    this.bgColor = AppColors.secondaryColor900,
    this.textColor = AppColors.colorWhite,
    this.isOutlineBorder = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space10),
        alignment: Alignment.center,
        decoration: isOutlineBorder ? BoxDecoration(
          color: AppColors.colorWhite,
          border: Border.all(color: AppColors.secondaryColor900, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5)
        ) : BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5),
          border: Border.all(color: AppColors.secondaryColor900, width: 1),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: boldDefault.copyWith(color: textColor),
        ),
      ),
    );
  }
}

