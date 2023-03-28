import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class ViewDetailsInvoiceInfo extends StatelessWidget {
  const ViewDetailsInvoiceInfo({Key? key}) : super(key: key);

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
            "ইনভয়েস ইনফরমেশন",
            style: semiBoldSmall.copyWith(color: AppColors.colorBlack),
          ),
        ),
        const SizedBox(height: Dimensions.space15),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ট্রান্সেকশন",
                style: regularSmall.copyWith(color: AppColors.colorBlack300, letterSpacing: 0.5),
              ),
              const SizedBox(height: Dimensions.space3),
              Text(
                "2311395",
                style: semiBoldDefault.copyWith(color: AppColors.secondaryColor900),
              )
            ],
          ),
        ),
        const SizedBox(height: Dimensions.space15),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.warningIcon, height: 15, width: 15),
                    const SizedBox(width: Dimensions.space5),
                    Text(
                      "Message Problem",
                      style: boldDefault.copyWith(color: AppColors.colorBlack),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space10, horizontal: Dimensions.space15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor900,
                      borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.phoneIcon, color: AppColors.colorWhite, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space5),
                      Text(
                        "Call Metro",
                        style: boldDefault.copyWith(color: AppColors.colorWhite),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
