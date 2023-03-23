import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/screens/create_parcel/screen_widget/create_parcel_bottom_section.dart';
import 'package:metro_merchant/views/screens/create_parcel/screen_widget/create_parcel_customer_info_section.dart';
import 'package:metro_merchant/views/screens/create_parcel/screen_widget/create_parcel_delivery_info_section.dart';
import 'package:metro_merchant/views/screens/create_parcel/screen_widget/create_parcel_top_section.dart';

class CreateParcelScreen extends StatefulWidget {
  const CreateParcelScreen({Key? key}) : super(key: key);

  @override
  State<CreateParcelScreen> createState() => _CreateParcelScreenState();
}

class _CreateParcelScreenState extends State<CreateParcelScreen> {
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
          title: Text("Create New Parcel", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CreateParcelTopSection(),
              const SizedBox(height: Dimensions.space20),
              const CreateParcelCustomerInfoSection(),
              const SizedBox(height: Dimensions.space20),
              const CreateParcelDeliveryInfoSection(),
              const SizedBox(height: Dimensions.space20),
              const CreateParcelBottomSection(),
              const SizedBox(height: Dimensions.space20),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
                child: CustomButton(
                  text: "Create Order",
                  press: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
