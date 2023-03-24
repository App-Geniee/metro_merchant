import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';

class CreditTransactionHistoryScreen extends StatefulWidget {
  const CreditTransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<CreditTransactionHistoryScreen> createState() => _CreditTransactionHistoryScreenState();
}

class _CreditTransactionHistoryScreenState extends State<CreditTransactionHistoryScreen> {
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
          title: Text("Back", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Credit Transaction History",
                style: boldLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space8),
              Flexible(
                flex: 0,
                child: Text(
                  "পার্সেলের ডেলিভারি চার্জে ২০% ডিসকাউন্ট পেতে মেট্রো ক্রেডিট ব্যবহার করুন",
                  style: regularDefault.copyWith(color: AppColors.colorBlack800),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: Dimensions.space20),
              TextFormField(
                cursorColor: AppColors.colorBlack,
                style: boldDefault.copyWith(color: AppColors.colorBlack),
                keyboardType: TextInputType.datetime,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  fillColor: AppColors.transparentColor,
                  hintText: "Filter by date",
                  hintStyle: semiBoldDefault.copyWith(color: AppColors.colorBlack300),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(right: Dimensions.space8),
                    child: Icon(Icons.calendar_today, color: AppColors.colorBlack300, size: 20),
                  ),
                  border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor, width: 1)),
                  focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldEnableBorderColor, width: 1)),
                  enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor, width: 1)),
                ),
              ),
              const SizedBox(height: Dimensions.space25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date/Transaction ID",
                    style: boldSmall.copyWith(color: AppColors.colorBlack),
                  ),
                  Text(
                    "Amount type",
                    style: boldSmall.copyWith(color: AppColors.colorBlack),
                  ),
                  Text(
                    "Paid out",
                    style: boldSmall.copyWith(color: AppColors.colorBlack),
                  )
                ],
              ),
              const VerticalWidgetDivider(space: Dimensions.space20, dividerColor: AppColors.colorBlack100),
              const SizedBox(height: Dimensions.space12),
              ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                separatorBuilder: (context, index) => const SizedBox(height: Dimensions.space12),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "25/02/2022",
                                style: semiBoldSmall.copyWith(
                                    color: AppColors.colorBlack400,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600
                                )
                            ),
                            const SizedBox(height: Dimensions.space12),
                            Text(
                              "321654987",
                              style: boldDefault.copyWith(color: AppColors.colorWarning2),
                            )
                          ],
                        ),
                        Text(
                          "Debit",
                          textAlign: TextAlign.center,
                          style: boldSmall.copyWith(color: AppColors.colorBlack400),
                        ),
                        Container(
                          padding: const EdgeInsets.all(Dimensions.space3 * 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor900,
                              borderRadius: BorderRadius.circular(Dimensions.defaultRadius)
                          ),
                          child: Text(
                            "-250",
                            style: boldSmall.copyWith(color: AppColors.colorWhite, fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    const VerticalWidgetDivider(space: Dimensions.space12, dividerColor: AppColors.colorBlack100)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
