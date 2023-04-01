import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_drop_down_field.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class SearchYourTicketsSection extends StatefulWidget {
  const SearchYourTicketsSection({Key? key}) : super(key: key);

  @override
  State<SearchYourTicketsSection> createState() => _SearchYourTicketsSectionState();
}

class _SearchYourTicketsSectionState extends State<SearchYourTicketsSection> {

  final productTypeList = ["Item 1", "Item 2", "Item 3", "Item 4"];
  String selectedProduct = "Item 1";

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search your tickets",
          style: semiBoldLarge.copyWith(color: AppColors.colorBlack800, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: Dimensions.space20),
        CustomTextField(
          hintText: "Filter by date",
          controller: TextEditingController(),
          onChanged: (value){},
        ),
        const SizedBox(height: Dimensions.space15),
        CustomTextField(
          hintText: "Enter ticket ID",
          controller: TextEditingController(),
          onChanged: (value){},
        ),
        const SizedBox(height: Dimensions.space15),
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
      ],
    );
  }
}
