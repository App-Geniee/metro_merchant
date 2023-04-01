import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/screens/ticket/screen_widget/ticket_summery_card.dart';

class TicketTopSection extends StatelessWidget {
  const TicketTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: TicketSummeryCard(
                  label: "Total parcel",
                  iconBgColor: AppColors.colorPurple100,
                  summeryStatusColor: AppColors.secondaryColor900,
                  imageSrc: AppImages.totalParcelIcon,
                  summeryStatus: "NEW",
                  summeryCount: "02"
              ),
            ),
            SizedBox(width: Dimensions.space15),
            Expanded(
              child: TicketSummeryCard(
                  label: "Solved Tickets",
                  iconBgColor: AppColors.colorLightGreen100,
                  summeryStatusColor: AppColors.colorGreen,
                  imageSrc: AppImages.deliveredIcon,
                  summeryStatus: "SOLVED",
                  summeryCount: "12"
              ),
            ),
          ],
        ),
        const SizedBox(height: Dimensions.space15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: TicketSummeryCard(
                  label: "Opened Tickets",
                  iconBgColor: AppColors.secondaryColor200,
                  summeryStatusColor: AppColors.colorBlue,
                  imageSrc: AppImages.canceledIcon,
                  summeryStatus: "OPENED",
                  summeryCount: "03"
              ),
            ),
            SizedBox(width: Dimensions.space15),
            Expanded(
              child: TicketSummeryCard(
                  label: "Pending Tickets",
                  iconBgColor: AppColors.colorOrange100,
                  summeryStatusColor: AppColors.colorOrange,
                  imageSrc: AppImages.pendingIcon,
                  summeryStatus: "PENDING",
                  summeryCount: "12"
              ),
            ),
          ],
        ),
      ],
    );
  }
}
