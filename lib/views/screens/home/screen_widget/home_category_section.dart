import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/components/button/category_button.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space20),
      decoration: BoxDecoration(
        color: AppColors.primaryColor700,
        borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 0,
            child: CategoryButton(
                imageSrc: AppImages.creditsImage,
                text: "Credits",
                press: (){}
            ),
          ),
          Expanded(
            flex: 0,
            child: CategoryButton(
                imageSrc: AppImages.ticketsImage,
                text: "Tickets",
                press: (){}
            ),
          ),
          Expanded(
            flex: 0,
            child: CategoryButton(
                imageSrc: AppImages.fraudImage,
                text: "Fraud",
                press: (){}
            ),
          ),
          Expanded(
            flex: 0,
            child: CategoryButton(
                imageSrc: AppImages.addonsImage,
                text: "Addons",
                press: (){}
            ),
          )
        ],
      ),
    );
  }
}