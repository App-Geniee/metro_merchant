import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class HomeCountingTrackSection extends StatelessWidget {
  const HomeCountingTrackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft, end: Alignment.topRight,
                        colors: [Color(0xff008B59), Color(0xff48F5B7)]
                    ),
                    borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("150", style: semiBoldHeadingSmall.copyWith(color: AppColors.colorWhite)),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      children: [
                        Image.asset(AppImages.onProcessImage, color: AppColors.colorWhite, height: 16, width: 18),
                        const SizedBox(width: Dimensions.space10),
                        Flexible(
                          child: Text(
                            "On process",
                            style: boldDefault.copyWith(color: AppColors.colorWhite),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: Dimensions.space15),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft, end: Alignment.topRight,
                        colors: [Color(0xff3868AF), Color(0xff80B3FF)]
                    ),
                    borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("36 (50%)", style: semiBoldHeadingSmall.copyWith(color: AppColors.colorWhite)),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      children: [
                        Image.asset(AppImages.orderReturnImage, color: AppColors.colorWhite, height: 16, width: 18),
                        const SizedBox(width: Dimensions.space10),
                        Flexible(
                          child: Text(
                            "Order return",
                            style: boldDefault.copyWith(color: AppColors.colorWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: Dimensions.space15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft, end: Alignment.topRight,
                        colors: [Color(0xffBB4F00), Color(0xffFFA665)]
                    ),
                    borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("45", style: semiBoldHeadingSmall.copyWith(color: AppColors.colorWhite)),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(AppImages.totalReturnedImage, color: AppColors.colorWhite, height: 22, width: 22),
                        const SizedBox(width: Dimensions.space10),
                        Flexible(
                          child: Text(
                            "Total returned",
                            style: boldDefault.copyWith(color: AppColors.colorWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: Dimensions.space15),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space15),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft, end: Alignment.topRight,
                        colors: [Color(0xff742AD2), Color(0xffCBA3FF)]
                    ),
                    borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("78 (50%)", style: semiBoldHeadingSmall.copyWith(color: AppColors.colorWhite)),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      children: [
                        Image.asset(AppImages.deliveryImage, color: AppColors.colorWhite, height: 16, width: 18),
                        const SizedBox(width: Dimensions.space10),
                        Flexible(
                          child: Text(
                            "Delivered",
                            style: boldDefault.copyWith(color: AppColors.colorWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
