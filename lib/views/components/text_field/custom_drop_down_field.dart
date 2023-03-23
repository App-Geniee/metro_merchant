import 'package:flutter/material.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text/label_text.dart';

class CustomDropDownTextField extends StatefulWidget {

  final dynamic selectedValue;
  final String? labelText;
  final String? hintText;
  final Function(dynamic)? onChanged;
  final List<DropdownMenuItem<dynamic>>? items;
  final Color? fillColor;
  final Color? focusColor;
  final Color? dropDownColor;
  final Color? iconColor;
  final double radius;
  final bool needLabel;

  const CustomDropDownTextField({
    Key? key,
    this.labelText,
    this.hintText,
    required this.selectedValue,
    required this.onChanged,
    required this.items,
    this.fillColor = AppColors.transparentColor,
    this.focusColor = AppColors.colorWhite,
    this.dropDownColor = AppColors.colorWhite,
    this.iconColor = AppColors.colorBlack300,
    this.radius = 3,
    this.needLabel = true
  }) : super(key: key);

  @override
  State<CustomDropDownTextField> createState() => _CustomDropDownTextFieldState();
}

class _CustomDropDownTextFieldState extends State<CustomDropDownTextField> {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.needLabel ? LabelText(text: widget.labelText.toString()) : const SizedBox(),
        widget.needLabel ? const SizedBox(height: Dimensions.space8) : const SizedBox(),
        SizedBox(
          height: 50,
          child: DropdownButtonFormField(
            value: widget.selectedValue,
            dropdownColor: widget.dropDownColor,
            focusColor: widget.focusColor,
            style: semiBoldDefault.copyWith(color: AppColors.colorBlack, fontWeight: FontWeight.w600),
            alignment: Alignment.centerLeft,
            decoration: InputDecoration(
              hintText: widget.hintText.toString(),
              filled: true,
              fillColor: widget.fillColor,
              hintStyle: regularSmall.copyWith(color: AppColors.colorBlack),
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color: AppColors.fieldDisableBorderColor, width: 1),
              ),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color: AppColors.fieldDisableBorderColor, width: 1),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color: AppColors.primaryColor, width: 1),
              ),
              errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color: AppColors.secondaryColor900, width: 1),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color: AppColors.fieldDisableBorderColor, width: 1),
              ),
            ),
            isExpanded: true,
            onChanged: widget.onChanged,
            items: widget.items,
            icon: Icon(Icons.keyboard_arrow_down_rounded, color: widget.iconColor),
          ),
        )
      ],
    );
  }
}