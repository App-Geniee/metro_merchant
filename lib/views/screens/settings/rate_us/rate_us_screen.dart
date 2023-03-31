import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/button/custom_button.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class RateUsScreen extends StatefulWidget {
  const RateUsScreen({Key? key}) : super(key: key);

  @override
  State<RateUsScreen> createState() => _RateUsScreenState();
}

class _RateUsScreenState extends State<RateUsScreen> {

  double selectedIcon = 0;

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
          title: Text("Rate Us", style: boldLarge.copyWith(color: AppColors.colorBlack)),
        ),
        body: SingleChildScrollView(
          padding: Dimensions.screenDefaultHV,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Leave your experience",
                style: boldExtraLarge.copyWith(color: AppColors.colorBlack),
              ),
              const SizedBox(height: Dimensions.space3),
              Flexible(
                flex: 0,
                child: Text(
                  "Help us improve ourselves by taking the following short survey.",
                  style: semiBoldDefault.copyWith(color: AppColors.colorBlack400),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const VerticalWidgetDivider(dividerColor: AppColors.colorBlack300),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(Dimensions.space15),
                margin: const EdgeInsets.only(top: Dimensions.space15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 1.5),
                  border: Border.all(color: AppColors.colorBlack300, width: 1)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "How likely are you to recommend the service of ",
                          style: semiBoldDefault.copyWith(color: AppColors.colorBlack800),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          "Metro Express",
                          style: boldDefault.copyWith(color: AppColors.secondaryColor900),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          " to your family and friends?",
                          style: semiBoldDefault.copyWith(color: AppColors.colorBlack800),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      ],
                    ),
                    const SizedBox(height: Dimensions.space10),
                    RatingBar.builder(
                      unratedColor: AppColors.secondaryColor300,
                      initialRating: 3.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: Dimensions.space3),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.secondaryColor900,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(height: Dimensions.space25),

                    Flexible(
                      flex: 0,
                      child: Text(
                        "How was the experince with our Pickup/Return Agent?",
                        style: semiBoldDefault.copyWith(color: AppColors.colorBlack800),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: Dimensions.space10),
                    RatingBar.builder(
                      unratedColor: AppColors.secondaryColor900,
                      initialRating: 0,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: const EdgeInsets.symmetric(horizontal: Dimensions.space3),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_outline,
                        color: AppColors.secondaryColor900,
                      ),
                      onRatingUpdate: (rating) {},
                    ),

                    const SizedBox(height: Dimensions.space30),
                    CustomTextField(
                      hintText: "Write your comment (Optional)",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                    const SizedBox(height: Dimensions.space20),
                    CustomButton(text: "Send Review", press: (){})
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
