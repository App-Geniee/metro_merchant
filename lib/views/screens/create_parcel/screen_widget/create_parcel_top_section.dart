import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';

class CreateParcelTopSection extends StatefulWidget {

  const CreateParcelTopSection({Key? key}) : super(key: key);

  @override
  State<CreateParcelTopSection> createState() => _CreateParcelTopSectionState();
}

class _CreateParcelTopSectionState extends State<CreateParcelTopSection> {

  final itemList = ["item-1", "item-2", "item-3"];
  String selectedValue = "item-1";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.space15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
            decoration: BoxDecoration(
              color: AppColors.colorLightBlue,
              borderRadius: BorderRadius.circular(Dimensions.defaultRadius),
              border: Border.all(color: AppColors.colorBlue, width: 1)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.alertIcon, color: AppColors.primaryColor, height: 20, width: 20),
                const SizedBox(width: Dimensions.space12),
                Flexible(
                  child: Text(
                    "দুপুর ৩ টার পর দেয়া পার্সেল রিকোয়েস্ট পর দিন পিক হবে",
                    style: regularSmall.copyWith(color: AppColors.colorBlack, fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: Dimensions.space15),
          CustomDropDownTextField(
            labelText: "Select Shop",
            selectedValue: selectedValue,
            onChanged: (val){
              setState(() {
                selectedValue = val.toString();
              });
            },
            items: itemList.map((e) => DropdownMenuItem<String>(value: e, child: Text(e))).toList(),
          )
        ],
      ),
    );
  }
}
