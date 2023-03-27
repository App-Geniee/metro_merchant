import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  const AddPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {

  final itemList = ["Mobile", "Bank transfer"];
  int selectedIndex = 0;

  final walletList = ["BKash", "Rocket", "Nogod"];
  String selectedWallet = "BKash";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          elevation: 0.7,
          titleSpacing: 0,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
          ),
          title: Text("Back", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit payment information",
                style: boldOverLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space8),
              Text(
                "To create delivery orders, first you need to add a payment method. "
                    "This payment method will be used to collect delivery charges.",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
              ),
              const VerticalWidgetDivider(space: Dimensions.space15, dividerColor: AppColors.colorBlack100),
              const SizedBox(height: Dimensions.space15),
              Text(
                "Select payment method",
                style: semiBoldLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space15),
              Row(
                children: List.generate(itemList.length, (index) => GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: Dimensions.space30),
                    child: Row(
                      children: [
                        Container(
                          height: 18, width: 18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.secondaryColor900, width: 1),
                              shape: BoxShape.circle
                          ),
                          child: Container(
                            width: 9, height: 9,
                            decoration: BoxDecoration(
                                color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorWhite,
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                        const SizedBox(width: Dimensions.space8),
                        Text(
                            itemList[index],
                            style: boldDefault.copyWith(color: AppColors.colorBlack)
                        )
                      ],
                    ),
                  ),
                )),
              ),
              const SizedBox(height: Dimensions.space20 * 2),
              selectedIndex == 0 ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropDownTextField(
                    labelText: "Wallet provider",
                    selectedValue: selectedWallet,
                    onChanged: (val){
                      setState(() {
                        selectedWallet = val.toString();
                      });
                    },
                    items: walletList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
                  ),
                  const SizedBox(height: Dimensions.space20),
                  CustomTextField(
                    labelText: "Phone account number",
                    controller: TextEditingController(),
                    onChanged: (value){},
                  ),
                ],
              ) : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    labelText: "Account name",
                    controller: TextEditingController(),
                    onChanged: (value){},
                  ),
                  const SizedBox(height: Dimensions.space20),
                  CustomTextField(
                    labelText: "Account number",
                    controller: TextEditingController(),
                    onChanged: (value){},
                  ),
                  const SizedBox(height: Dimensions.space20),
                  CustomDropDownTextField(
                    labelText: "Bank name",
                    selectedValue: selectedWallet,
                    onChanged: (val){
                      setState(() {
                        selectedWallet = val.toString();
                      });
                    },
                    items: walletList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
                  ),
                  const SizedBox(height: Dimensions.space20),
                  CustomDropDownTextField(
                    labelText: "Select branch",
                    selectedValue: selectedWallet,
                    onChanged: (val){
                      setState(() {
                        selectedWallet = val.toString();
                      });
                    },
                    items: walletList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
                  ),
                  const SizedBox(height: Dimensions.space20),
                  CustomTextField(
                    labelText: "Routing number",
                    controller: TextEditingController(),
                    onChanged: (value){},
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.space30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomButton(
                      isOutlineBorder: true,
                      textColor: AppColors.secondaryColor900,
                      text: "Cancel",
                      press: (){}
                    ),
                  ),
                  const SizedBox(width: Dimensions.space20),
                  Expanded(
                    child: CustomButton(
                      text: "Add",
                      textColor: AppColors.colorWhite,
                      press: (){}
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
