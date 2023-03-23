import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';

class CategoryButton extends StatelessWidget {

  final String imageSrc;
  final String text;
  final VoidCallback press;

  const CategoryButton({

    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(Dimensions.space5),
        color: AppColors.transparentColor,
        child: Column(
          children: [
            Image.asset(imageSrc, height: 30, width: 30),
            const SizedBox(height: Dimensions.space12),
            Text(text, style: boldDefault.copyWith(color: AppColors.colorWhite))
          ],
        ),
      ),
    );
  }
}
