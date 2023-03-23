import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class VerticalWidgetDivider extends StatelessWidget {

  final double space;
  final Color dividerColor;

  const VerticalWidgetDivider({
    Key? key,
    this.space = Dimensions.space15,
    this.dividerColor = AppColors.primaryColor300
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: space),
        Divider(color: dividerColor, thickness: 0.5),
      ],
    );
  }
}
