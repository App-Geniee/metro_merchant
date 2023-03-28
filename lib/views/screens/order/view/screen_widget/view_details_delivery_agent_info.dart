import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class ViewDetailsDeliveryAgentInfo extends StatelessWidget {
  const ViewDetailsDeliveryAgentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor100,
          ),
          child: Text(
            "ডেলিভারি এজেন্ট ইনফরমেশন ",
            style: semiBoldSmall.copyWith(color: AppColors.colorBlack),
          ),
        ),
        const SizedBox(height: Dimensions.space20),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mahidi Hassan",
                style: boldSmall.copyWith(color: AppColors.colorBlack),
              ),
              Text(
                "01674803314",
                style: boldSmall.copyWith(color: AppColors.colorBlack),
              )
            ],
          ),
        ),
        const SizedBox(height: Dimensions.space5),
      ],
    );
  }
}
