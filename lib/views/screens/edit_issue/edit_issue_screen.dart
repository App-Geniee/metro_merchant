import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class EditIssueScreen extends StatefulWidget {
  const EditIssueScreen({Key? key}) : super(key: key);

  @override
  State<EditIssueScreen> createState() => _EditIssueScreenState();
}

class _EditIssueScreenState extends State<EditIssueScreen> {
  final productTypeList = ["My parcel is not yet delivered", "Item 2", "Item 3", "Item 4"];
  String selectedProduct = "My parcel is not yet delivered";

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
          title: Text("Issue History", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit Issue",
                style: boldOverLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space30),
              CustomDropDownTextField(
                labelText: "Select issue",
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
                controller: TextEditingController(
                  text: "অফিস কালাকালীন সময় ডেলিভারি দিতে হবে আগে কল দিয়ে যাবেন"
                ),
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
              CustomButton(text: "Update", press: (){})
            ],
          ),
        ),
      ),
    );
  }
}
