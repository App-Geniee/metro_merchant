import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class SummeryCard extends StatelessWidget {

  final Color iconBgColor;
  final Color summeryStatusColor;
  final String imageSrc;
  final String summeryStatus;
  final String summeryCount;

  const SummeryCard({
    Key? key,
    required this.iconBgColor,
    required this.summeryStatusColor,
    required this.imageSrc,
    required this.summeryStatus,
    required this.summeryCount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Dimensions.space12),
      decoration: BoxDecoration(
        color: AppColors.transparentColor,
        border: Border.all(color: AppColors.colorBlack100, width: 1),
        borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5)
      ),
      child: Row(
        children: [
          Container(
            height: 30, width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: iconBgColor, shape: BoxShape.circle),
            child: Image.asset(imageSrc, height: 15, width: 15),
          ),
          const SizedBox(width: Dimensions.space12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(summeryStatus, style: boldSmall.copyWith(color: summeryStatusColor)),
              const SizedBox(height: Dimensions.space5),
              Text(
                summeryCount,
                style: boldExtraLarge.copyWith(color: AppColors.colorBlack),
              )
            ],
          )
        ],
      ),
    );
  }
}
