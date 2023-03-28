import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/screens/payment_update/screen_widget/paid_amount_card.dart';
import 'package:metro_merchant/views/screens/payment_update/screen_widget/processing_amount_card.dart';
import 'package:metro_merchant/views/screens/payment_update/screen_widget/unpaid_amount_card.dart';

class PaymentUpdateScreen extends StatefulWidget {
  const PaymentUpdateScreen({Key? key}) : super(key: key);

  @override
  State<PaymentUpdateScreen> createState() => _PaymentUpdateScreenState();
}

class _PaymentUpdateScreenState extends State<PaymentUpdateScreen> {

  final tabList = [
    {
      "image" : AppImages.takaIcon,
      "amount" : "3000",
      "label" : "Unpaid amount"
    },
    {
      "image" : AppImages.takaIcon,
      "amount" : "4500",
      "label" : "Processing"
    },
    {
      "image" : AppImages.takaIcon,
      "amount" : "3000",
      "label" : "Paid amount"
    },
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
          ),
          titleSpacing: 0,
          title: Text(
            "Payment Update",
            style: boldLarge.copyWith(color: AppColors.colorBlack),
          ),
          bottom: PreferredSize(
            preferredSize: const Size(double.maxFinite, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(tabList.length, (index) => Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsetsDirectional.only(top: Dimensions.space8, bottom: Dimensions.space8),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.transparentColor,
                      border: Border(
                          bottom: BorderSide(color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack100, width: index == selectedIndex ? 3 : 1),
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "${tabList[index]["image"]}",
                              color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack300,
                              height: 18, width: 18,
                            ),
                            const SizedBox(width: Dimensions.space3),
                            Text(
                              "${tabList[index]["amount"]}",
                              style: boldLarge.copyWith(
                                color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack300,
                              ),
                            )
                          ],
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
          ),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: selectedIndex == 0 ? const UnpaidAmountCard() :
          selectedIndex == 1 ? const ProcessingAmountCard() :
          selectedIndex == 2 ? const PaidAmountCard() : const SizedBox()
        ),
      ),
    );
  }
}
