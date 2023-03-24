import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class DeactivateShopScreen extends StatefulWidget {
  const DeactivateShopScreen({Key? key}) : super(key: key);

  @override
  State<DeactivateShopScreen> createState() => _DeactivateShopScreenState();
}

class _DeactivateShopScreenState extends State<DeactivateShopScreen> {
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
                "Shop name",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
              ),
              const SizedBox(height: Dimensions.space3 * 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Metro express Limited",
                    style: boldDefault.copyWith(color: AppColors.colorBlack),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: const Icon(
                      Icons.mode_edit_outline_outlined,
                      color: AppColors.colorBlack400,
                      size: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(height: Dimensions.space15),

              Text(
                "Shop email",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
              ),
              const SizedBox(height: Dimensions.space3 * 2),
              Text(
                "mahidihasan@gmail.com",
                style: boldDefault.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space15),

              Text(
                "Shop address",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
              ),
              const SizedBox(height: Dimensions.space3 * 2),
              Flexible(
                flex: 0,
                child: Text(
                  "10/14, Block F, Joint Quater, Aziz Moholla, Mohammadpur Dhaka 1207",
                  style: boldDefault.copyWith(color: AppColors.colorBlack),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: Dimensions.space15),

              Text(
                "Pickup area",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
              ),
              const SizedBox(height: Dimensions.space3 * 2),
              Flexible(
                flex: 0,
                child: Text(
                  "Solimullah road (Mohammadpur)",
                  style: boldDefault.copyWith(color: AppColors.colorBlack),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: Dimensions.space15),

              Text(
                "Pickup number",
                style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
              ),
              const SizedBox(height: Dimensions.space3 * 2),
              Text(
                "123 456 789",
                style: boldDefault.copyWith(color: AppColors.colorBlack),
              ),

              const SizedBox(height: Dimensions.space24),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 90,
                  padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8, horizontal: Dimensions.space12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.colorWhite,
                    borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2),
                    border: Border.all(color: AppColors.secondaryColor900, width: 1)
                  ),
                  child: Text(
                    "Deactivate",
                    style: boldSmall.copyWith(color: AppColors.secondaryColor900),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
