import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';

class FraudEntriesSection extends StatelessWidget {
  const FraudEntriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(20, (index) => Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: Dimensions.space10),
        padding: const EdgeInsets.all(Dimensions.space15),
        decoration: BoxDecoration(
          color: AppColors.transparentColor,
          border: Border.all(color: AppColors.colorBlack100, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.phone_outlined, color: AppColors.secondaryColor900, size: 20),
                    const SizedBox(width: Dimensions.space5),
                    Text(
                      "01713***219",
                      style: semiBoldLarge.copyWith(color: AppColors.secondaryColor900),
                    )
                  ],
                ),
                Text(
                  "08PM 11 May 2022",
                  style: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                )
              ],
            ),
            const VerticalWidgetDivider(space: Dimensions.space10, dividerColor: AppColors.colorBlack300),
            const SizedBox(height: Dimensions.space10),
            Flexible(
              flex: 0,
              child: Text.rich(
                TextSpan(
                      children: [
                        TextSpan(
                            text: "Name : ",
                            style: boldLarge.copyWith(color: AppColors.colorBlack)
                        ),
                        TextSpan(
                            text: "Rakib Ahmed Sumon",
                            style: boldLarge.copyWith(color: AppColors.colorBlack)
                        )
                      ]
                  ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            const SizedBox(height: Dimensions.space8),
            Flexible(
              flex: 0,
              child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                          text: "Details: ",
                          style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)
                      ),
                      TextSpan(
                          text: "products delivery na dile valo , ei protom ekta bed experience holo . delivery men nirupay hoye bolhe sir ei rokom lok k products delivery korben na.",
                          style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)
                      )
                    ]
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            )
          ],
        ),
      ))
    );
  }
}
