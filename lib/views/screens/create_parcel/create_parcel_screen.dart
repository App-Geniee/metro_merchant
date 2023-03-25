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
            children: const [
              CreateParcelTopSection(),
              SizedBox(height: Dimensions.space20),
              CreateParcelCustomerInfoSection(),
              SizedBox(height: Dimensions.space20),
              CreateParcelDeliveryInfoSection(),
              SizedBox(height: Dimensions.space20),
              CreateParcelBottomSection(),
            ],
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
            color: AppColors.colorWhite,
            child: CustomButton(
              text: "Create Order",
              press: (){},
            ),
          ),
        ),
      ),
    );
  }
}
