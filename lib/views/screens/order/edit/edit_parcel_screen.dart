import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class EditParcelScreen extends StatefulWidget {
  const EditParcelScreen({Key? key}) : super(key: key);

  @override
  State<EditParcelScreen> createState() => _EditParcelScreenState();
}

class _EditParcelScreenState extends State<EditParcelScreen> {

  final areaList = ["Mirpur", "Uttara", "Shahabag", "Dhanmondi", "Mohammadpur"];
  String selectedArea = "Mirpur";

  final categoryList = ["Electronics", "Cloth", "Furniture", "Fruits"];
  String selectedCategory = "Electronics";

  final weightList = ["1 KG", "2 KG", "3 KG", "4 KG", "5KG"];
  String selectedWeight = "3 KG";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        appBar: AppBar(
          elevation: 0.7,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
          ),
          titleSpacing: 0,
          title: Text("Order History", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit parcel",
                style: boldOverLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space24),
              CustomTextField(
                labelText: "Customer name",
                controller: TextEditingController(),
                onChanged: (){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Customer number",
                textInputType: TextInputType.number,
                controller: TextEditingController(),
                onChanged: (){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomDropDownTextField(
                labelText: "Area",
                selectedValue: selectedArea,
                onChanged: (val){
                  setState(() {
                    selectedArea = val.toString();
                  });
                },
                items: areaList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Address",
                textInputType: TextInputType.number,
                controller: TextEditingController(),
                onChanged: (){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Cash collection",
                textInputType: TextInputType.number,
                controller: TextEditingController(),
                onChanged: (){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomDropDownTextField(
                labelText: "Selected category",
                selectedValue: selectedCategory,
                onChanged: (val){
                  setState(() {
                    selectedCategory = val.toString();
                  });
                },
                items: categoryList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
              const SizedBox(height: Dimensions.space15),
              CustomDropDownTextField(
                labelText: "Weight",
                selectedValue: selectedWeight,
                onChanged: (val){
                  setState(() {
                    selectedWeight = val.toString();
                  });
                },
                items: weightList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Instruction",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space25),

              CustomButton(
                text: "Update",
                press: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
