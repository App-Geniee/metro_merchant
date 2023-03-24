import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button_with_icon.dart';
import 'package:metro_merchant/views/screens/shop/all_shop/screen_widget/all_shop_top_section.dart';

class AllShopScreen extends StatefulWidget {
  const AllShopScreen({Key? key}) : super(key: key);

  @override
  State<AllShopScreen> createState() => _AllShopScreenState();
}

class _AllShopScreenState extends State<AllShopScreen> {
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
          title: Text("Back", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            children: [
              const AllShopTopSection(),
              const SizedBox(height: Dimensions.space15),
              CustomButtonWithIcon(
                text: "Add New Shop",
                icon: Icons.add_circle_outline,
                press: (){
                  Get.toNamed(AppRoute.createNewShopScreen);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
