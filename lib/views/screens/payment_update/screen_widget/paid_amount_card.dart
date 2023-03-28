import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';

class PaidAmountCard extends StatelessWidget {
  const PaidAmountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      separatorBuilder: (context, index) => const SizedBox(height: Dimensions.space10),
      itemBuilder: (context, index) => Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
        decoration: BoxDecoration(
          color: AppColors.transparentColor,
          border: Border.all(color: AppColors.colorBlack100, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Apr 25, 2022",
              style: semiBoldDefault.copyWith(color: AppColors.colorBlack300),
            ),
            const SizedBox(height: Dimensions.space10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment of total 3 parcel", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
                    const SizedBox(width: Dimensions.space3),
                    Text("3000", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                  ],
                )
              ],
            ),
            const SizedBox(height: Dimensions.space10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const StatusWidget(
                  bgColor: AppColors.colorGreen,
                  text: "Paid",
                  textColor: AppColors.colorWhite,
                  borderRadius: Dimensions.defaultRadius * 3,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    "View invoice",
                    style: boldDefault.copyWith(color: AppColors.secondaryColor900),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
