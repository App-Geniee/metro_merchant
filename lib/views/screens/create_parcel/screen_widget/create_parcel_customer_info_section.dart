import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class CreateParcelCustomerInfoSection extends StatelessWidget {
  const CreateParcelCustomerInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8, horizontal: Dimensions.space15),
          decoration: const BoxDecoration(color: AppColors.primaryColor100),
          child: Text(
            "Customer Information",
            style: regularSmall.copyWith(color: AppColors.colorBlack, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: Dimensions.space15),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                labelText: "Customer name",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Customer number",
                controller: TextEditingController(),
                onChanged: (value){},
              ),
              const SizedBox(height: Dimensions.space15),
              CustomTextField(
                labelText: "Address",
                controller: TextEditingController(),
                onChanged: (value){},
              )
            ],
          ),
        )
      ],
    );
  }
}
