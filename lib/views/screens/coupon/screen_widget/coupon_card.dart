import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class CouponCard extends StatelessWidget {

  final Widget leftWidget;
  final Widget rightWidget;

  const CouponCard({Key? key, required this.leftWidget, required this.rightWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space5, horizontal: Dimensions.space5),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
          ),
          child: DottedBorder(
            color: AppColors.primaryColor500,
            radius: const Radius.circular(Dimensions.defaultRadius * 3),
            padding: const EdgeInsets.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
            child: Row(
              children: [
                leftWidget,
                const SizedBox(width: Dimensions.space10),
                Container(
                  height: 60, width: 1,
                  color: AppColors.colorBlack100,
                ),
                const SizedBox(width: Dimensions.space25),
                rightWidget
              ],
            ),
          ),
        ),
        Positioned(
          top: - Dimensions.space15,
          left: Dimensions.space15 * 5,
          child: Container(
            height: 25, width: 25,
            decoration: const BoxDecoration(color: AppColors.colorWhite, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: - Dimensions.space15,
          left: Dimensions.space15 * 5,
          child: Container(
            height: 25, width: 25,
            decoration: const BoxDecoration(color: AppColors.colorWhite, shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
