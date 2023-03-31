import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';

class CouponBottomNav extends StatelessWidget {

  final Widget content;
  const CouponBottomNav({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: AnimatedPadding(
        padding: MediaQuery.of(context).viewInsets,
        duration: const Duration(milliseconds: 100),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space20, horizontal: Dimensions.space15),
          decoration: const BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.defaultRadius * 5),
              topRight: Radius.circular(Dimensions.defaultRadius * 5)
            ),
            boxShadow: [BoxShadow(color: AppColors.colorBlack100, blurRadius: 10, offset: Offset(-1, -1))]
          ),
          child: content,
        ),
      ),
    );
  }
}
