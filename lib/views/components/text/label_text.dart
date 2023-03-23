import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class LabelText extends StatelessWidget {

  final String text;
  final TextStyle textStyle;
  const LabelText({

    Key? key,
    required this.text,
    this.textStyle = semiBoldSmall
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle.copyWith(color: AppColors.colorBlack400, fontWeight: FontWeight.w600));
  }
}
