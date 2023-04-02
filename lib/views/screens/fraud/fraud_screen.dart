import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/screens/fraud/screen_widget/fraud_add_new_section.dart';
import 'package:metro_merchant/views/screens/fraud/screen_widget/fraud_entries_section.dart';
import 'package:metro_merchant/views/screens/fraud/screen_widget/fraud_search_section.dart';

class FraudScreen extends StatefulWidget {
  const FraudScreen({Key? key}) : super(key: key);

  @override
  State<FraudScreen> createState() => _FraudScreenState();
}

class _FraudScreenState extends State<FraudScreen> {

  final tabList = ["Entries", "Add New", "Search"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar:  AppBar(
            elevation: 0,
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
                      child: Text(tabList[index], style: semiBoldSmall.copyWith(color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack300)),
                    ),
                  ),
                )),
              ),
            ),
          ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              selectedIndex == 0 ? Text(
                "(12 fraud entries found)",
                style: semiBoldSmall.copyWith(color: AppColors.colorBlack400),
              ) : const SizedBox(),
              selectedIndex == 0 ?  const SizedBox(height: Dimensions.space15) : const SizedBox(),

              selectedIndex == 0 ? const FraudEntriesSection()
                  : selectedIndex == 1 ? const FraudAddNewSection()
                  : selectedIndex == 2 ? const FraudSearchSection() : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
