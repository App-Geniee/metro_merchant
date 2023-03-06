import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class CustomButton extends StatelessWidget {
  String? buttonName;
  final IconData icon;
  final Color buttonColor;
  final Color contentColor;
  final VoidCallback press;
  final bool isRoundShape;

  CustomButton({
    Key? key,
    this.buttonName,
    required this.icon,
    this.buttonColor = AppColors.secondaryColor900,
    this.contentColor = AppColors.colorWhite,
    required this.press,
    this.isRoundShape = false
  }) : super(key: key);

  CustomButton.roundShape({
    Key? key,
    required this.isRoundShape,
    required this.icon,
    this.buttonColor = AppColors.secondaryColor900,
    this.contentColor = AppColors.colorWhite,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isRoundShape ? Container(
      height: 50, width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: buttonColor, shape: BoxShape.circle),
      child: Icon(icon, color: contentColor, size: 25),
    ) : Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space15),
      decoration: BoxDecoration(color: buttonColor, borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        ],
      ),
    );
  }
}
