import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';

class PaymentMethodDialog extends StatelessWidget {
  const PaymentMethodDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.colorWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Material.defaultSplashRadius * 3)),

    );
  }
}
