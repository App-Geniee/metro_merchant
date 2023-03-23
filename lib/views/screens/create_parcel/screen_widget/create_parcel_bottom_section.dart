import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/divider/vertical_widget_divider.dart';
import 'package:metro_merchant/views/screens/create_parcel/screen_widget/create_parcel_bottom_row.dart';

class CreateParcelBottomSection extends StatelessWidget {
  const CreateParcelBottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "আপনার পিকআপ এড্রেস থেকে ডেলিভারি চার্জ",
            style: regularDefault.copyWith(color: AppColors.colorBlack),
          ),
          const SizedBox(height: Dimensions.space20),

          const CreateParcelBottomRow(labelText: "ক্যাশ কালেকশন"),
          const SizedBox(height: Dimensions.space20),

          const CreateParcelBottomRow(labelText: "ডেলিভারি চার্জ"),
          const SizedBox(height: Dimensions.space20),

          const CreateParcelBottomRow(labelText: "COD"),
          const SizedBox(height: Dimensions.space20),

          const CreateParcelBottomRow(labelText: "ডিসকাউন্ট"),
          const VerticalWidgetDivider(space: Dimensions.space15),
          const SizedBox(height: Dimensions.space15),

          const CreateParcelBottomRow(labelText: "সর্বমোট পরিমান"),
        ],
      ),
    );
  }
}
