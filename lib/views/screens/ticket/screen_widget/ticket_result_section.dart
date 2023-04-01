import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/status/status_widget.dart';

class TicketResultSection extends StatelessWidget {
  const TicketResultSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Results", style: boldSmall.copyWith(color: AppColors.colorBlack)),
        const SizedBox(height: Dimensions.space15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(20, (index) => Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(bottom: Dimensions.space10),
            padding: const EdgeInsets.all(Dimensions.space15),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.colorBlack100, width: 1),
              borderRadius: BorderRadius.circular(Dimensions.defaultRadius * 2)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ID # 125487",
                          style: boldSmall.copyWith(color: AppColors.colorBlack800),
                        ),
                        const SizedBox(height: Dimensions.space3),
                        Text(
                          "12/05/2022",
                          style: semiBoldSmall.copyWith(color: AppColors.colorBlack400),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const StatusWidget(
                          isBorder: true,
                          bgColor: AppColors.transparentColor,
                          text: "Assigned",
                          textColor: AppColors.colorSkyBlue
                        ),
                        const SizedBox(width: Dimensions.space24),
                        PopupMenuButton(
                          offset: const Offset(-15, -15),
                          child: Container(
                            padding: const EdgeInsets.all(Dimensions.space3),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(color: AppColors.transparentColor, shape: BoxShape.circle),
                            child: Image.asset(AppImages.dotMenuIcon, color: AppColors.colorBlack, height: 14, width: 5),
                          ),
                          itemBuilder: (context){
                            return [
                              PopupMenuItem(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text("View", style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)),
                                ),
                              ),
                              PopupMenuItem(
                                child: GestureDetector(
                                  onTap: () => Get.toNamed(AppRoute.editIssueScreen),
                                  child: Text(
                                      "Edit",
                                      style: semiBoldDefault.copyWith(color: AppColors.colorBlack300)
                                  ),
                                ),
                              ),
                            ];
                          },
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: Dimensions.space12),
                Text(
                  "Order Issue",
                  style: boldDefault.copyWith(color: AppColors.colorGreen),
                ),
                const SizedBox(height: Dimensions.space5),
                Flexible(
                  flex: 0,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Message: ",
                          style: boldSmall.copyWith(color: AppColors.colorBlack800)
                        ),
                        TextSpan(
                            text: "It is a long established fact that a reader will be distracted by the readable content of a page when...",
                            style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                        )
                      ]
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
                const SizedBox(height: Dimensions.space24),
                Flexible(
                  flex: 0,
                  child: Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(
                              text: "Reply update: ",
                              style: boldSmall.copyWith(color: AppColors.colorDeepOrange)
                          ),
                          TextSpan(
                              text: "It is a long established fact that a reader will be distracted by the readable content of a page when...",
                              style: semiBoldSmall.copyWith(color: AppColors.colorBlack400)
                          )
                        ]
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                )
              ],
            ),
          )),
        )
      ],
    );
  }
}
