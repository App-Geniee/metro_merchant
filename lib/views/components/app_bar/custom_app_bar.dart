import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  final String title;
  final bool isShowBackBtn;
  final Color bgColor;
  final Color appBarContentColor;
  final bool isShowActionBtn;
  final bool isTitleCenter;
  final bool fromAuth;
  final bool isProfileCompleted;
  final List<Widget>? actionWidget;
  final String changeRoute;
  final bool isUsedRouteName;
  final bool isSearch;

  const CustomAppBar({
    Key? key,
    this.isProfileCompleted=false,
    this.fromAuth = false,
    this.isTitleCenter = false,
    this.bgColor = AppColors.colorWhite,
    this.appBarContentColor = AppColors.colorBlack,
    this.isShowBackBtn=true,
    required this.title,
    this.isShowActionBtn=false,
    this.actionWidget,
    this.changeRoute = "",
    this.isUsedRouteName = false,
    this.isSearch= false,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
}

class _CustomAppBarState extends State<CustomAppBar> {

  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return widget.isShowBackBtn ? widget.isShowActionBtn ? AppBar(
      elevation: 0,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      backgroundColor: widget.bgColor,
      title: Text(widget.title.tr, style: boldLarge.copyWith(color: widget.appBarContentColor)),
      leading: IconButton(
          onPressed: (){
            if(widget.fromAuth){
              Get.offAllNamed(AppRoute.signInScreen);
            }
            else if(widget.isProfileCompleted){
              //showExitDialog(Get.context!);
            }
            else{
              String previousRoute=Get.previousRoute;
              if(previousRoute=='/splash-screen'){
                Get.offAndToNamed(AppRoute.homeScreen);
              }else{
                widget.isUsedRouteName ? Get.offAndToNamed(widget.changeRoute.toString()) : Get.back();
              }
            }
          },
          icon: Icon(Icons.arrow_back, size: 18, color: widget.appBarContentColor)
      ),
      actions: widget.actionWidget,
    ) : AppBar(
      elevation: 0,
      titleSpacing: 0,
      backgroundColor: widget.bgColor,
      title: Text(widget.title.tr, style: boldLarge.copyWith(color: widget.appBarContentColor)),
      leading: IconButton(
          onPressed: (){
            if(widget.fromAuth){
              Get.offAllNamed(AppRoute.signInScreen);
            }
            else if(widget.isProfileCompleted){
              //showExitDialog(Get.context!);
            }
            else{
              String previousRoute=Get.previousRoute;
              if(previousRoute=='/splash-screen'){
                Get.offAndToNamed(AppRoute.homeScreen);
              }else{
                widget.isUsedRouteName ? Get.offAndToNamed(widget.changeRoute.toString()) : Get.back();
              }
            }
          },
          icon: Icon(Icons.arrow_back, size: 18, color: widget.appBarContentColor)
      ),
    ) : AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: widget.bgColor,
      title: Text(widget.title.tr, style: boldLarge.copyWith(color: widget.appBarContentColor)),
    );
  }
}
