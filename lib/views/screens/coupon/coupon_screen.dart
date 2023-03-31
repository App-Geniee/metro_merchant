import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';
import 'package:metro_merchant/views/screens/coupon/screen_widget/coupon_card.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {

  final tabList = ["Active Coupon", "Used Coupon"];
  int selectedIndex = 0;

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
                    padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.transparentColor,
                        border: Border(bottom: BorderSide(
                            color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack100,
                            width: index == selectedIndex ? 3 : 1)
                        )
                    ),
                    child: Text(tabList[index], style: boldDefault.copyWith(color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack300)),
                  ),
                ),
              )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(50, (index) => Padding(
              padding: const EdgeInsets.only(bottom: Dimensions.space10),
              child: CouponCard(
                leftWidget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.takaIcon, color: AppColors.colorWhite, height: 27, width: 27),
                        Text("80", style: boldHeadingSmall.copyWith(color: AppColors.colorWhite))
                      ],
                    ),
                    const SizedBox(height: Dimensions.space5),
                    StatusWidget(
                      borderRadius: 20,
                      textColor: AppColors.colorWhite,
                      text: selectedIndex == 0 ? "Running" : "Used",
                      bgColor: selectedIndex == 0 ? AppColors.colorOrange : AppColors.primaryColor700,
                    )
                  ],
                ),
                rightWidget: Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "METROEID80",
                            style: boldSmall.copyWith(color: AppColors.colorWhite),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: const Icon(Icons.delete_outline, color: AppColors.primaryColor500, size: 20),
                          )
                        ],
                      ),
                      const SizedBox(height: Dimensions.space3),
                      Text("Discount for EID shopping", style: regularSmall.copyWith(color: AppColors.primaryColor500)),
                      const SizedBox(height: Dimensions.space15),
                      Text(
                        "Coupons expires on 04.06.2022",
                        style: boldSmall.copyWith(color: AppColors.colorWhite),
                      )
                    ],
                  ),
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
