import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class ViewDetailsParcelTracking extends StatefulWidget {
  const ViewDetailsParcelTracking({Key? key}) : super(key: key);

  @override
  State<ViewDetailsParcelTracking> createState() => _ViewDetailsParcelTrackingState();
}

class _ViewDetailsParcelTrackingState extends State<ViewDetailsParcelTracking> {

  int currentState = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
          decoration: const BoxDecoration(
            color: AppColors.primaryColor100,
          ),
          child: Text(
            "পার্সেল ট্র্যাকিং",
            style: semiBoldSmall.copyWith(color: AppColors.colorBlack),
          ),
        ),
        const SizedBox(height: Dimensions.space20),
      ],
    );
  }
}
