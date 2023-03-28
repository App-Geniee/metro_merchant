import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class StatusWidget extends StatelessWidget {

  final Color bgColor;
  final String text;
  final Color textColor;
  final double borderRadius;

  const StatusWidget({
    Key? key,
    required this.bgColor,
    required this.text,
    required this.textColor,
    this.borderRadius = Dimensions.defaultRadius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
