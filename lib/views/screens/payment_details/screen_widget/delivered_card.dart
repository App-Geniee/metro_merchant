import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';

class DeliveredCard extends StatelessWidget {
  const DeliveredCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      separatorBuilder: (context, index) => const SizedBox(height: Dimensions.space10),
      itemBuilder: (context, index) => Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
        decoration: BoxDecoration(
          color: AppColors.transparentColor,
          border: Border.all(color: AppColors.colorBlack100, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("22AKVXFGY45", style: boldDefault.copyWith(color: AppColors.colorDeepOrange)),
            const SizedBox(height: Dimensions.space10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nazmul Shanto", style: boldDefault.copyWith(color: AppColors.colorBlack)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 16, width: 16),
                    Text("4500", style: boldDefault.copyWith(color: AppColors.colorBlack))
                  ],
                )
              ],
            ),
            const SizedBox(height: Dimensions.space3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Narayanganj", style: semiBoldDefault.copyWith(color: AppColors.colorBlack400)),
                Text("Cash", style: semiBoldDefault.copyWith(color: AppColors.colorBlack400))
              ],
            ),
            const SizedBox(height: Dimensions.space10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const StatusWidget(
                  bgColor: AppColors.colorLightGreen100,
                  text: "Delivered",
                  textColor: AppColors.colorLightGreen
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text("Details", style: boldDefault.copyWith(color: AppColors.secondaryColor900)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
