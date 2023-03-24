import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/bottom_nav/bottom_nav_menu_shape.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/bottom_nav_bar.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/drawer_content.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/home_banner_section.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/home_category_section.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/home_counting_track_section.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/home_delivery_date_section.dart';
import 'package:metro_merchant/views/screens/home/screen_widget/home_top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: drawerKey,
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          elevation: 0.7,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: (){
              drawerKey.currentState!.openDrawer();
            },
            child: const Icon(Icons.menu, color: AppColors.primaryColor, size: 18),
          ),
          titleSpacing: 0,
          title: Image.asset(AppImages.appBarTitleImage, height: 25),
          actions: [
            GestureDetector(
              onTap: () => Get.toNamed(AppRoute.createParcelScreen),
              child: Container(
                margin: const EdgeInsets.only(bottom: Dimensions.space12, top: Dimensions.space12, right: Dimensions.space20),
                padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8, horizontal: Dimensions.space15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor900, borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5)
                ),
                child: Text("Create Parcel", style: boldSmall.copyWith(color: AppColors.colorWhite)),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.only(right: Dimensions.space20),
                child: Image.asset(AppImages.notificationImage, height: 20, width: 20),
              )
            )
          ],
        ),
        drawer: const Drawer(
          backgroundColor: AppColors.colorWhite,
          child: DrawerContent(),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeTopSection(),
              SizedBox(height: Dimensions.space15),
              HomeBannerSection(),
              SizedBox(height: Dimensions.space15),
              HomeCategorySection(),
              SizedBox(height: Dimensions.space15),
              HomeDeliveryDateSection(),
              SizedBox(height: Dimensions.space15),
              HomeCountingTrackSection()
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
