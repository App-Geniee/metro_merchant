import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/screens/order/view/screen_widget/view_details_delivery_agent_info.dart';
import 'package:metro_merchant/views/screens/order/view/screen_widget/view_details_delivery_info.dart';
import 'package:metro_merchant/views/screens/order/view/screen_widget/view_details_invoice_info.dart';
import 'package:metro_merchant/views/screens/order/view/screen_widget/view_details_parcel_tracking.dart';

class ViewOrderDetailsScreen extends StatefulWidget {
  const ViewOrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ViewOrderDetailsScreen> createState() => _ViewOrderDetailsScreenState();
}

class _ViewOrderDetailsScreenState extends State<ViewOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.colorWhite,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20),
          ),
          titleSpacing: 0,
          title: Text(
            "ID: D1XWUX6LZ9EE",
            style: boldLarge.copyWith(color: AppColors.colorBlack),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: Dimensions.space20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ViewDetailsDeliveryInfo(),
              SizedBox(height: Dimensions.space15),
              ViewDetailsDeliveryAgentInfo(),
              SizedBox(height: Dimensions.space15),
              ViewDetailsParcelTracking(),
              SizedBox(height: Dimensions.space15),
              ViewDetailsInvoiceInfo()
            ],
          ),
        ),
      ),
    );
  }
}
