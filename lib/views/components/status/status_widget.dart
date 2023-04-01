import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class StatusWidget extends StatelessWidget {

  final Color bgColor;
  final String text;
  final Color textColor;
  final double borderRadius;
  final bool isBorder;

  const StatusWidget({
    Key? key,
    required this.bgColor,
    required this.text,
    required this.textColor,
    this.borderRadius = Dimensions.defaultRadius,
    this.isBorder = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isBorder ? Container(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: Dimensions.space8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: AppColors.colorBlack100, width: 1),
          borderRadius: BorderRadius.circular(borderRadius)
      ),
      child: Text(text, style: boldExtraSmall.copyWith(color: textColor)),
    ) : Container(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: Dimensions.space8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(borderRadius)
      ),
      child: Text(text, style: boldExtraSmall.copyWith(color: textColor)),
    );
  }
}
