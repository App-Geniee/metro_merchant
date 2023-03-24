import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class CreateNewShopScreen extends StatefulWidget {
  const CreateNewShopScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewShopScreen> createState() => _CreateNewShopScreenState();
}

class _CreateNewShopScreenState extends State<CreateNewShopScreen> {

  final productTypeList = ["Item 1", "Item 2", "Item 3", "Item 4"];
  String selectedProduct = "Item 1";

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
                "Create new shop",
                style: boldOverLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space24),

              CustomTextField(
                labelText: "Enter shop name",
                controller: TextEditingController(),
                onChanged: (value){}
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Enter pickup address",
                controller: TextEditingController(),
                onChanged: (value){}
              ),
              const SizedBox(height: Dimensions.space15),
              CustomDropDownTextField(
                labelText: "Select product type",
                selectedValue: selectedProduct,
                onChanged: (val){
                  setState(() {
                    selectedProduct = val.toString();
                  });
                },
                items: productTypeList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
              const SizedBox(height: Dimensions.space15),
              CustomDropDownTextField(
                labelText: "Select pickup",
                selectedValue: selectedProduct,
                onChanged: (val){
                  setState(() {
                    selectedProduct = val.toString();
                  });
                },
                items: productTypeList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                  labelText: "Enter page link",
                  controller: TextEditingController(),
                  onChanged: (value){}
              ),
              const SizedBox(height: Dimensions.space20),

              CustomButton(
                text: "Create Shop",
                press: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
