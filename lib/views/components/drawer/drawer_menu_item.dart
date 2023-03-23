import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/text/drawer_item_text.dart';

class DrawerMenuItem extends StatelessWidget {

  final String imageSrc;
  final VoidCallback press;
  final String itemName;

  const DrawerMenuItem({
    Key? key,
    required this.imageSrc,
    required this.itemName,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(left: Dimensions.space15, right: Dimensions.space15),
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space10, horizontal: Dimensions.space15),
        decoration: const BoxDecoration(color: AppColors.transparentColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(imageSrc, color: AppColors.colorBlack600, height: 20, width: 18),
                const SizedBox(width: Dimensions.space12),
                DrawerItemText(text: itemName)
              ],
            ),
            const VerticalWidgetDivider()
          ],
        ),
      ),
    );
  }
}
