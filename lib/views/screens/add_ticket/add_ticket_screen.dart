import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class AddTicketScreen extends StatefulWidget {
  const AddTicketScreen({Key? key}) : super(key: key);

  @override
  State<AddTicketScreen> createState() => _AddTicketScreenState();
}

class _AddTicketScreenState extends State<AddTicketScreen> {

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
                "Add new Issue",
                style: boldOverLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space30),
              CustomDropDownTextField(
                labelText: "Select status",
                selectedValue: selectedProduct,
                onChanged: (val){
                  setState(() {
                    selectedProduct = val.toString();
                  });
                },
                items: productTypeList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
              const SizedBox(height: Dimensions.space20),
              CustomTextField(
                hintText: "Write message",
                controller: TextEditingController(),
                onChanged: (value){},
                maxLines: 4,
              ),

              const SizedBox(height: Dimensions.space20),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.transparentColor,
                    borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2),
                    border: Border.all(color: AppColors.colorBlack, width: 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.upload, color: AppColors.primaryColor, size: 20),
                      const SizedBox(width: Dimensions.space15),
                      Text(
                        "Upload File",
                        style: boldDefault.copyWith(color: AppColors.primaryColor),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Dimensions.space20),
              CustomButton(text: "Create New Tickets", press: (){})
            ],
          ),
        ),
      ),
    );
  }
}
