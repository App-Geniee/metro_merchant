import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class FraudAddNewSection extends StatelessWidget {
  const FraudAddNewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          labelText: "Phone number of dispute",
          controller: TextEditingController(),
          textInputType: TextInputType.number,
          onChanged: (value){},
        ),
        const SizedBox(height: Dimensions.space20),
        CustomTextField(
          labelText: "Name of dispute",
          controller: TextEditingController(),
          textInputType: TextInputType.number,
          onChanged: (value){},
        ),
        const SizedBox(height: Dimensions.space20),
        CustomTextField(
          labelText: "Name of dispute",
          controller: TextEditingController(),
          textInputType: TextInputType.number,
          onChanged: (value){},
        ),
        const SizedBox(height: Dimensions.space20),
        CustomTextField(
          hintText: "Write your comment",
          controller: TextEditingController(),
          textInputType: TextInputType.number,
          onChanged: (value){},
          maxLines: 4,
        ),
        const SizedBox(height: Dimensions.space20),
        CustomButton(text: "Add New", press: (){})
      ],
    );
  }
}
