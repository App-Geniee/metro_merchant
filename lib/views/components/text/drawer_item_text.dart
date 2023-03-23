import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class DrawerItemText extends StatelessWidget {

  final String text;
  final TextStyle textStyle;
  final int maxLines;

  const DrawerItemText({
    Key? key,
    required this.text,
    this.textStyle = semiBoldLarge,
    this.maxLines = 2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle.copyWith(color: AppColors.colorBlack600, fontWeight: FontWeight.w600),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
