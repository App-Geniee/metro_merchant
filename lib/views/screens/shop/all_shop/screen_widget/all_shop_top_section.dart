import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class AllShopTopSection extends StatelessWidget {
  const AllShopTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: 18, horizontal: 18),
          decoration: BoxDecoration(
            color: AppColors.colorLightBlue,
            borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2),
            border: Border.all(color: AppColors.colorBlue, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(AppImages.shopIcon, color: AppColors.primaryColor, height: 20, width: 20),
                  const SizedBox(width: Dimensions.space12),
                  Flexible(
                    flex: 0,
                    child: Text(
                      "Shopix.com.bd",
                      style: boldLarge.copyWith(color: AppColors.colorBlack),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: (){},
                child: const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 15),
              )
            ],
          ),
        ),
        Positioned(
          top: -Dimensions.space15,
          right: Dimensions.space30,
          child: Container(
            width: 80,
            padding: const EdgeInsets.all(2),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: AppColors.colorWhite, borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8 / 2, horizontal: Dimensions.space8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.colorGreen,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Primary",
                style: boldSmall.copyWith(color: AppColors.colorWhite),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
