import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CreateParcelBottomRow extends StatelessWidget {

  final String labelText;

  const CreateParcelBottomRow({
    Key? key,
    required this.labelText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: regularDefault.copyWith(color: AppColors.colorBlack),
        ),
        Row(
          children: [
            Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
            const SizedBox(height: Dimensions.space5),
            Text(
              "0",
              style: semiBoldLarge.copyWith(color: AppColors.colorBlack, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
