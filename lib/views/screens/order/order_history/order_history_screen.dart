import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/screens/order/order_history/screen_widget/order_history_card.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {

  final tabList = ["All", "Active", "Delivered", "Returned"];
  int selectedIndex = 0;

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        animationDuration: const Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: AppColors.colorWhite,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.colorWhite,
            leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
            ),
            titleSpacing: 0,
            title: Text("Order History", style: boldLarge.copyWith(color: AppColors.colorBlack)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            cursorColor: AppColors.colorBlack,
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              hintText: "Enter customer name / phone",
                              hintStyle: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                              border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldEnableBorderColor)),
                              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: Dimensions.space15),
                    Expanded(
                      flex: 0,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Row(
                          children: [
                            Text(isVisible ? "Hide all" : "Show all", style: boldSmall.copyWith(color: AppColors.secondaryColor900)),
                            const SizedBox(width: Dimensions.space3),
                            Icon(isVisible ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_rounded, color: AppColors.secondaryColor900, size: 15)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: Dimensions.space15),
                Visibility(
                  visible: isVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        cursorColor: AppColors.colorBlack,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: "Enter ticket ID",
                          hintStyle: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                          border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldEnableBorderColor)),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                        ),
                      ),
                      const SizedBox(height: Dimensions.space15),
                      TextFormField(
                        cursorColor: AppColors.colorBlack,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: "Filter by date",
                          hintStyle: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                          border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldEnableBorderColor)),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                        ),
                      ),
                      const SizedBox(height: Dimensions.space15),
                      TextFormField(
                        cursorColor: AppColors.colorBlack,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: "Select shop name",
                          hintStyle: semiBoldSmall.copyWith(color: AppColors.colorBlack300),
                          border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldEnableBorderColor)),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.fieldDisableBorderColor)),
                        ),
                      ),
                      const SizedBox(height: Dimensions.space20),
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  separatorBuilder: (context, index) => const SizedBox(height: Dimensions.space8),
                  itemBuilder: (context, index){
                    return const OrderHistoryCard();
                  },
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
