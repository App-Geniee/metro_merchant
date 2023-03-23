import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback press;
  final Color bgColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.press,
    this.bgColor = AppColors.secondaryColor900,
    this.textColor = AppColors.colorWhite
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space10),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: boldDefault.copyWith(color: textColor),
        ),
      ),
    );
  }
}

