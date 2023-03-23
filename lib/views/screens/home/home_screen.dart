import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/bottom_nav/bottom_nav_menu_shape.dart';
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

  int selectedIndex = 0;
  List imageList = [AppImages.homeIcon, AppImages.orderIcon, AppImages.addIcon, AppImages.historyIcon, AppImages.profileIcon];
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
            Container(
              margin: const EdgeInsets.only(bottom: Dimensions.space12, top: Dimensions.space12, right: Dimensions.space20),
              padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space8, horizontal: Dimensions.space15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor900, borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5)
              ),
              child: Text("Create Parcel", style: boldSmall.copyWith(color: AppColors.colorWhite)),
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
        bottomNavigationBar: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space24, vertical: Dimensions.space12),
            decoration: const BoxDecoration(
              color: AppColors.colorWhite,
              boxShadow: [
                BoxShadow(color: AppColors.bottomNavShadowColor, blurRadius: 2, offset: Offset(-2, -2))
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(imageList.length, (index) => BottomNavMenuShape(
                 shapeColor: index == selectedIndex ? AppColors.primaryColor200 : index == 2 ? AppColors.secondaryColor900 : AppColors.transparentColor,
                 press: (){
                   setState(() {
                     selectedIndex = index;
                   });
                 },
                 isSelected: index == selectedIndex ? index == 2 ? false : true : false,
                 image: Image.asset(
                    imageList[index],
                    color: index == selectedIndex ? AppColors.bottomNavSelectedColor : index == 2 ? AppColors.colorWhite : AppColors.bottomNavUnSelectedColor,
                    height: 16, width: 16
                  )
              ))
            ),
          ),
        ),
      ),
    );
  }
}
