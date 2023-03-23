import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class CreateParcelDeliveryInfoSection extends StatefulWidget {

  const CreateParcelDeliveryInfoSection({Key? key}) : super(key: key);

  @override
  State<CreateParcelDeliveryInfoSection> createState() => _CreateParcelDeliveryInfoSectionState();
}

class _CreateParcelDeliveryInfoSectionState extends State<CreateParcelDeliveryInfoSection> {

  final weightList = ["1 KG", "2 KG", "3 KG", "4 KG", "5KG"];
  String selectedWeight = "3 KG";

  final areaList = ["Mirpur", "Uttara", "Shahabag", "Dhanmondi", "Mohammadpur"];
  String selectedArea = "Mirpur";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8, horizontal: Dimensions.space15),
          decoration: const BoxDecoration(color: AppColors.primaryColor100),
          child: Text(
            "Delivery Information",
            style: regularSmall.copyWith(color: AppColors.colorBlack, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: Dimensions.space15),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                labelText: "Product price",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Instruction",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
            ],
          ),
        )
      ],
    );
  }
}
