import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';

class ViewDetailsDeliveryInfo extends StatelessWidget {
  const ViewDetailsDeliveryInfo({Key? key}) : super(key: key);

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ডেলিভারি ইনফরমেশন",
                style: semiBoldSmall.copyWith(color: AppColors.colorBlack),
              ),
              const StatusWidget(
                bgColor: AppColors.colorLightGreen100,
                text: "Delivered",
                textColor: AppColors.colorLightGreen,
              )
            ],
          ),
        ),
        const SizedBox(height: Dimensions.space12),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Apr 21, 2022 | 8:40 PM", style: semiBoldSmall.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space12),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("পার্সেল পেমেন্ট", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("1620", style: semiBoldDefault.copyWith(color: AppColors.colorBlack))
                    ],
                  )
                ],
              ),
              const SizedBox(height: Dimensions.space8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ডেলিভারি চার্জ", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.secondaryColor900, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("100", style: semiBoldDefault.copyWith(color: AppColors.secondaryColor900))
                    ],
                  )
                ],
              ),
              const SizedBox(height: Dimensions.space8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ওয়েট চার্জ", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.secondaryColor900, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("100", style: semiBoldDefault.copyWith(color: AppColors.secondaryColor900))
                    ],
                  )
                ],
              ),
              const SizedBox(height: Dimensions.space8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("COD চার্জ", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("15.20", style: semiBoldDefault.copyWith(color: AppColors.colorBlack))
                    ],
                  )
                ],
              ),
              const SizedBox(height: Dimensions.space8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("রিটার্ন চার্জ", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("0", style: semiBoldDefault.copyWith(color: AppColors.colorBlack))
                    ],
                  )
                ],
              ),
              const SizedBox(height: Dimensions.space8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ডিসকাউন্ট", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("0", style: semiBoldDefault.copyWith(color: AppColors.colorBlack))
                    ],
                  )
                ],
              ),
              const VerticalWidgetDivider(space: 8, dividerColor: AppColors.colorBlack800),
              const SizedBox(height: Dimensions.space8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("মোট", style: regularDefault.copyWith(color: AppColors.colorBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 15, width: 15),
                      const SizedBox(width: Dimensions.space3),
                      Text("1620", style: semiBoldDefault.copyWith(color: AppColors.colorBlack))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: Dimensions.space12),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Farhana Tanjin Monika", style: regularDefault.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space8),
              Text("01629837250", style: regularDefault.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space10),

              Text("ডেলিভারি ঠিকানা", style: regularSmall.copyWith(color: AppColors.colorGreen)),
              const SizedBox(height: Dimensions.space3),
              Flexible(
                flex: 0,
                child: Text(
                  "১০/১৪, ব্লক এফ , জয়েন্ট কোয়াটার , আজিজ মহল্লা , মোহাম্মদপুর ঢাকা ১২০৭",
                  style: regularDefault.copyWith(color: AppColors.colorBlack),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: Dimensions.space8),
              Text("ডেলিভারি এলাকা", style: regularSmall.copyWith(color: AppColors.colorGreen)),
              const SizedBox(height: Dimensions.space3),
              Flexible(
                flex: 0,
                child: Text(
                  "মোহাম্মদপুর",
                  style: regularDefault.copyWith(color: AppColors.colorBlack),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: Dimensions.space8),
              Text("ডেলিভারি নির্দেশাবলী", style: regularSmall.copyWith(color: AppColors.colorGreen)),
              const SizedBox(height: Dimensions.space3),
              Flexible(
                flex: 0,
                child: Text(
                  "(CBM)",
                  style: regularDefault.copyWith(color: AppColors.colorBlack),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
