import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';

class HomeDeliveryDateSection extends StatelessWidget {
  const HomeDeliveryDateSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Delivery & return trend",
          style: boldLarge.copyWith(color: AppColors.colorBlack),
        ),
        const SizedBox(height: Dimensions.space8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "4 June 2020 - 4 July 2020",
              style: semiBoldSmall.copyWith(color: AppColors.colorBlack400),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Select Date",
                  style: boldDefault.copyWith(color: AppColors.colorBlack),
                ),
                const SizedBox(width: Dimensions.space12),
                GestureDetector(
                  onTap: (){},
                  child: Image.asset(AppImages.selectDateImage, color: AppColors.secondaryColor900, height: 20, width: 20),
                )
              ],
            )
          ]
        ),
        const VerticalWidgetDivider(space: Dimensions.space10)
      ],
    );
  }
}
