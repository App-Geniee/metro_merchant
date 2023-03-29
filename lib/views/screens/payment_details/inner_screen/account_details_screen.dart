import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/screens/payment_details/inner_screen/screen_widget/account_details_table.dart';
import 'package:metro_merchant/views/screens/payment_details/inner_screen/screen_widget/summery_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {

  @override
  Widget build(BuildContext context) {

    final List<ChartData> dataList = [
      ChartData('13 Dec', 10, 15, 17, 2),
      ChartData('14 Dec', 11, 8, 20, 5),
      ChartData('15 Dec', 20, 12, 7, 6),
      ChartData('16 Dec', 20, 12, 7, 6),
      ChartData('17 Dec', 20, 12, 7, 6),
      ChartData('18 Dec', 50, 12, 30, 6),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          elevation: 0.7,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
          ),
          titleSpacing: 0,
          title: Text(
            "Back",
            style: boldLarge.copyWith(color: AppColors.colorBlack),
          ),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Summery(Last 30 days)", style: boldLarge.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: SummeryCard(
                        iconBgColor: AppColors.colorPurple100,
                        summeryStatusColor: AppColors.colorPurple,
                        imageSrc: AppImages.totalParcelIcon,
                        summeryStatus: "Total parcel",
                        summeryCount: "02"
                    ),
                  ),
                  SizedBox(width: Dimensions.space15),
                  Expanded(
                    child: SummeryCard(
                        iconBgColor: AppColors.colorLightGreen100,
                        summeryStatusColor: AppColors.colorLightGreen,
                        imageSrc: AppImages.deliveredIcon,
                        summeryStatus: "Delivered",
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
                    child: SummeryCard(
                        iconBgColor: AppColors.secondaryColor200,
                        summeryStatusColor: AppColors.secondaryColor900,
                        imageSrc: AppImages.canceledIcon,
                        summeryStatus: "Cancelled",
                        summeryCount: "03"
                    ),
                  ),
                  SizedBox(width: Dimensions.space15),
                  Expanded(
                    child: SummeryCard(
                        iconBgColor: AppColors.colorOrange100,
                        summeryStatusColor: AppColors.colorOrange,
                        imageSrc: AppImages.pendingIcon,
                        summeryStatus: "Pending",
                        summeryCount: "12"
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.space15),
              Text("Delivery performance", style: boldLarge.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space15),
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  series: <CartesianSeries>[
                    // Renders column chart
                    ColumnSeries<ChartData, String>(
                        dataSource: dataList,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y
                    ),
                    ColumnSeries<ChartData, String>(
                        dataSource: dataList,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y1
                    ),
                    ColumnSeries<ChartData, String>(
                        dataSource: dataList,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y2
                    ),
                    ColumnSeries<ChartData, String>(
                        dataSource: dataList,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y3
                    )
                  ]
              ),
              const SizedBox(height: Dimensions.space15),
              TextFormField(
                cursorColor: AppColors.colorBlack,
                controller: TextEditingController(),
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: "Filter by date",
                  hintStyle: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                  border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldEnableBorderColor)),
                  enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                  prefixIcon: const Icon(Icons.calendar_today, color: AppColors.colorBlack300, size: 18)
                ),
              ),
              const SizedBox(height: Dimensions.space15),
              const AccountDetailsTable()
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData{
  ChartData(this.x, this.y, this.y1, this.y2, this.y3);
  final String x;
  final double? y;
  final double? y1;
  final double? y2;
  final double? y3;
}
