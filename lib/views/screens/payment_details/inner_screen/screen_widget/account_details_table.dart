import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';

class AccountDetailsTable extends StatelessWidget {
  const AccountDetailsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          border: const TableBorder(
              horizontalInside: BorderSide(color: AppColors.colorBlack100, width: 0.5)
          ),
          children: [
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Dimensions.space12),
                    child: Text(
                        "Category",
                        style: boldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Dimensions.space12),
                    child: Text(
                        "Quantity",
                        textAlign: TextAlign.center,
                        style: boldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Dimensions.space12),
                    child: Text(
                        "Amount",
                        textAlign: TextAlign.right,
                        style: boldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "Total parcel",
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "86",
                        textAlign: TextAlign.center,
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImages.takaIcon, color: AppColors.colorGreen, height: 12, width: 12),
                        Text(
                            "11250",
                            textAlign: TextAlign.right,
                            style: semiBoldSmall.copyWith(color: AppColors.colorGreen)
                        ),
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "Total parcel",
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "86",
                        textAlign: TextAlign.center,
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImages.takaIcon, color: AppColors.colorGreen, height: 12, width: 12),
                        Text(
                            "11250",
                            textAlign: TextAlign.right,
                            style: semiBoldSmall.copyWith(color: AppColors.colorGreen)
                        ),
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "Total parcel",
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "86",
                        textAlign: TextAlign.center,
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImages.takaIcon, color: AppColors.colorGreen, height: 12, width: 12),
                        Text(
                            "11250",
                            textAlign: TextAlign.right,
                            style: semiBoldSmall.copyWith(color: AppColors.colorGreen)
                        ),
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "Total parcel",
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "86",
                        textAlign: TextAlign.center,
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImages.takaIcon, color: AppColors.colorGreen, height: 12, width: 12),
                        Text(
                            "11250",
                            textAlign: TextAlign.right,
                            style: semiBoldSmall.copyWith(color: AppColors.colorGreen)
                        ),
                      ],
                    ),
                  )
                ]
            ),
            TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "Total parcel",
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Text(
                        "86",
                        textAlign: TextAlign.center,
                        style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.space12, bottom: Dimensions.space12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppImages.takaIcon, color: AppColors.colorGreen, height: 12, width: 12),
                        Text(
                            "11250",
                            textAlign: TextAlign.right,
                            style: semiBoldSmall.copyWith(color: AppColors.colorGreen)
                        ),
                      ],
                    ),
                  )
                ]
            ),
          ],
        ),
        const VerticalWidgetDivider(space: 0, dividerColor: AppColors.colorBlack100)
      ],
    );
  }
}
