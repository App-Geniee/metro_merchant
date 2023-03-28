import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/horizontal_widget_divider.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Dimensions.space12),
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
                children: const [
                  StatusWidget(
                    bgColor: AppColors.statusColor1,
                    text: "Pickup approve",
                    textColor: AppColors.statusTextColor1
                  ),
                  SizedBox(width: Dimensions.space8),
                  StatusWidget(
                      bgColor: AppColors.statusColor2,
                      text: "Exchange",
                      textColor: AppColors.statusTextColor2
                  )
                ],
              ),
              PopupMenuButton(
                offset: const Offset(-15, -15),
                child: Container(
                  padding: const EdgeInsets.all(Dimensions.space3),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: AppColors.transparentColor, shape: BoxShape.circle),
                  child: Image.asset(AppImages.dotMenuIcon, color: AppColors.colorBlack, height: 14, width: 5),
                ),
                itemBuilder: (context){
                  return [
                    PopupMenuItem(
                      child: GestureDetector(
                        onTap: () => Get.toNamed(AppRoute.viewOrderDetailsScreen),
                        child: Text("View", style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)),
                      ),
                    ),
                    PopupMenuItem(
                      child: GestureDetector(
                        onTap: () => Get.toNamed(AppRoute.editParcelScreen),
                        child: Text(
                            "Edit",
                            style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: GestureDetector(
                        onTap: (){},
                        child:  Text("Delete", style: semiBoldDefault.copyWith(color: AppColors.colorBlack300))
                      ),
                    ),
                    PopupMenuItem(
                      child: GestureDetector(
                        onTap: (){},
                        child: Text("Ticket", style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)),
                      )
                    )
                  ];
                },
              ),
            ],
          ),
          const SizedBox(height: Dimensions.space12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Farhana Tanjin Monika",
                style: boldDefault.copyWith(color: AppColors.colorBlack),
              ),
              Row(
                children: [
                  Image.asset(
                    AppImages.phoneIcon,
                    color: AppColors.colorBlack,
                    height: 13, width: 13,
                  ),
                  const SizedBox(width: Dimensions.space5),
                  Text(
                    "01715548748",
                    style: boldDefault.copyWith(color: AppColors.colorBlack),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: Dimensions.space12),
          Text(
            "Track ID: DM090422LU9W9R",
            style: boldSmall.copyWith(color: AppColors.colorBlack100),
          ),
          const SizedBox(height: Dimensions.space8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Delivery type : ",
                  style: boldSmall.copyWith(color: AppColors.colorBlack100)
                ),
                TextSpan(
                  text: "Regular",
                  style: boldSmall.copyWith(color: AppColors.colorBlue)
                )
              ]
            ),
          ),
          const SizedBox(height: Dimensions.space8),
          Row(
            children: [
              Image.asset(
                AppImages.shopIcon,
                color: AppColors.colorBlack100,
                height: 13, width: 13
              ),
              const SizedBox(width: Dimensions.space5),
              Text(
                "Moni's collection",
                style: boldSmall.copyWith(color: AppColors.colorBlack100),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.space8),
          Row(
            children: [
              Image.asset(
                  AppImages.addressIcon,
                  color: AppColors.colorBlack100,
                  height: 13, width: 13
              ),
              const SizedBox(width: Dimensions.space5),
              Flexible(
                child: Text(
                  "House-11 (2nd floor)Dhanmondi, Dhaka-1205",
                  style: boldSmall.copyWith(color: AppColors.colorBlack100),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              )
            ],
          ),
          const VerticalWidgetDivider(space: Dimensions.space12, dividerColor: AppColors.colorBlack100),
          const SizedBox(height: Dimensions.space8),
          Flexible(
            flex: 0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("COD", style: boldSmall.copyWith(color: AppColors.colorGreen)),
                      const SizedBox(width: 2),
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 14),
                      Text("20.00", style: boldSmall.copyWith(color: AppColors.colorBlack100)),
                    ],
                  ),
                  const HorizontalWidgetDivider(space: 4),
                  Row(
                    children: [
                      Text("Charge", style: boldSmall.copyWith(color: AppColors.colorBlack100)),
                      const SizedBox(width: 2),
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 14),
                      Text("180.00", style: boldSmall.copyWith(color: AppColors.colorBlack100)),
                    ],
                  ),
                  const HorizontalWidgetDivider(space: 4),
                  Row(
                    children: [
                      Text("Discount", style: boldSmall.copyWith(color: AppColors.colorBlack100)),
                      const SizedBox(width: 2),
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 14),
                      Text("180.00", style: boldSmall.copyWith(color: AppColors.colorBlack100)),
                    ],
                  )
                ]
            ),
          )
        ],
      ),
    );
  }
}
