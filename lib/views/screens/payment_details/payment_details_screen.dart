import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';
import 'package:metro_merchant/views/screens/payment_details/screen_widget/delivered_card.dart';

class PaymentDetailsScreen extends StatefulWidget {

  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {

  late String status;
  late Color statusColor;

  final tabList = [
    {
      "count" : "3",
      "label" : "Delivered"
    },
    {
      "count" : "0",
      "label" : "Return"
    },
    {
      "count" : "0",
      "label" : "Damage"
    },
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    status = Get.arguments[0];
    statusColor = Get.arguments[1];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            "Payment Details",
            style: boldLarge.copyWith(color: AppColors.colorBlack),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Parcel list",
                      style: boldLarge.copyWith(color: AppColors.colorBlack),
                    ),
                    StatusWidget(bgColor: statusColor, text: status, textColor: AppColors.colorWhite, borderRadius: Dimensions.defaultRadius * 3)
                  ],
                ),
              ),
              const SizedBox(height: Dimensions.space24),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment ID", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        Text("21548787", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                      ],
                    ),
                    const SizedBox(height: Dimensions.space12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cash collection", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
                            Text("1620", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Adjustment", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
                            Text("16", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery charge", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
                            Text("1620", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("COD charge", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
                            Text("1620", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: Dimensions.space12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cash deposit", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.takaIcon, color: AppColors.colorBlack, height: 18, width: 18),
                            Text("1620", style: semiBoldDefault.copyWith(color: AppColors.colorBlack)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const VerticalWidgetDivider(space: Dimensions.space20, dividerColor: AppColors.colorBlack100),
              const SizedBox(height: Dimensions.space15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(tabList.length, (index) => Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsetsDirectional.only(bottom: Dimensions.space12),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.transparentColor,
                          border: Border(
                            bottom: BorderSide(color: index == selectedIndex ? AppColors.colorGreen : AppColors.colorBlack100, width: index == selectedIndex ? 3 : 1),
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${tabList[index]["count"]}",
                            style: boldLarge.copyWith(
                              color: index == selectedIndex ? AppColors.colorGreen : AppColors.colorBlack300,
                            ),
                          ),
                          const SizedBox(height: Dimensions.space3),
                          Text(
                            "${tabList[index]["label"]}",
                            style: semiBoldDefault.copyWith(
                                color: index == selectedIndex ? AppColors.colorBlack : AppColors.colorBlack300
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
              ),
              const SizedBox(height: Dimensions.space20),
              selectedIndex == 0 ? const DeliveredCard() : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
