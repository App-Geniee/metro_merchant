import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class FraudSearchSection extends StatelessWidget {
  const FraudSearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: CustomTextField(
                isShowSuffixIcon: true,
                isIcon: true,
                isSearch: true,
                hintText: "Search by number",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
            ),
            const SizedBox(width: Dimensions.space12),
            Expanded(
              flex: 2,
              child: CustomButton(text: "Search", press: (){}),
            )
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.3,
            horizontal: MediaQuery.of(context).size.width * 0.3
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.noResultImage, height: 80, width: 80),
              const SizedBox(height: Dimensions.space15),
              Text(
                "No complaint found",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack),
              )
            ],
          ),
        )
      ],
    );
  }
}
