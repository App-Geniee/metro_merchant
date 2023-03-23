import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello",
          style: boldOverLarge.copyWith(color: AppColors.colorBlack),
        ),
        const SizedBox(height: Dimensions.space5),
        Text(
          "Shopix.com.bd | Merchant | Met-52545",
          style: semiBoldSmall.copyWith(color: AppColors.colorBlack300, fontWeight: FontWeight.w600, letterSpacing: 0.5),
        )
      ],
    );
  }
}
