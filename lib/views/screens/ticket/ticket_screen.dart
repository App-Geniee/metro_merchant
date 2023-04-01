import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/screens/ticket/screen_widget/search_your_tickets_section.dart';
import 'package:metro_merchant/views/screens/ticket/screen_widget/ticket_result_section.dart';
import 'package:metro_merchant/views/screens/ticket/screen_widget/ticket_top_section.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

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
          title: Text("Ticketing", style: boldLarge.copyWith(color: AppColors.colorBlack)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.space8, bottom: Dimensions.space8, right: Dimensions.space15),
              child: SizedBox(
                width: 120,
                child: CustomButton(text: "Add Ticket", press: () => Get.toNamed(AppRoute.addTicketScreen))
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TicketTopSection(),
              SizedBox(height: Dimensions.space15),
              SearchYourTicketsSection(),
              VerticalWidgetDivider(dividerColor: AppColors.colorBlack100,),
              SizedBox(height: Dimensions.space15),
              TicketResultSection()
            ],
          ),
        ),
      ),
    );
  }
}
