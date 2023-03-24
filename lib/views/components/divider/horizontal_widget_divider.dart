import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class HorizontalWidgetDivider extends StatelessWidget {

  final double space;
  final Color dividerColor;

  const HorizontalWidgetDivider({
    Key? key,
    this.space = Dimensions.space12,
    this.dividerColor = AppColors.colorBlack100
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: space),
        Container(
          width: 1,
          height: 17,
          color: dividerColor,
        ),
        SizedBox(width: space)
      ],
    );
  }
}
