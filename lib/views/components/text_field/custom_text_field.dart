import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text/label_text.dart';

class CustomTextField extends StatefulWidget {

  final String? labelText;
  final String? hintText;
  final Function? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final FormFieldValidator? validator;
  final TextInputType? textInputType;
  final bool isEnable;
  final bool isPassword;
  final bool isShowSuffixIcon;
  final bool isIcon;
  final VoidCallback? onSuffixTap;
  final bool isSearch;
  final bool isPicker;
  final TextInputAction inputAction;
  final bool needOutlineBorder;
  final bool readOnly;
  final bool needRequiredSign;
  final int maxLines;
  final bool animatedLabel;
  final bool needLabel;
  final Color fillColor;
  final Widget? prefixIcon;

  const CustomTextField({
    Key? key,
    this.labelText,
    this.readOnly = false,
    this.fillColor = AppColors.transparentColor,
    required this.onChanged,
    this.hintText,
    this.controller,
    this.focusNode,
    this.nextFocus,
    this.validator,
    this.textInputType,
    this.isEnable = true,
    this.isPassword = false,
    this.isShowSuffixIcon = false,
    this.isIcon = false,
    this.onSuffixTap,
    this.isSearch = false,
    this.isPicker = false,
    this.inputAction = TextInputAction.next,
    this.needOutlineBorder = false,
    this.needRequiredSign = false,
    this.maxLines = 1,
    this.animatedLabel = false,
    this.needLabel = false,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {

    return widget.needOutlineBorder ? widget.animatedLabel ? TextFormField(
      maxLines: widget.maxLines,
      readOnly: widget.readOnly,
      style: semiBoldDefault.copyWith(color: AppColors.colorBlack, fontWeight: FontWeight.w600),
      textAlign: TextAlign.left,
      cursorColor: AppColors.colorBlack,
      controller: widget.controller,
      autofocus: false,
      textInputAction: widget.inputAction,
      enabled: widget.isEnable,
      focusNode: widget.focusNode,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      obscureText: widget.isPassword?obscureText:false,
      decoration: InputDecoration(
        //contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
        labelText: widget.labelText,
        labelStyle: semiBoldDefault.copyWith(color: AppColors.colorBlack400, fontWeight: FontWeight.w600),
        fillColor: widget.fillColor,
        filled: true,
        prefixIcon: widget.prefixIcon,
        border: OutlineInputBorder(borderSide: const BorderSide(width:0.5,color: AppColors.fieldDisableBorderColor), borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
        focusedBorder: OutlineInputBorder(borderSide: const BorderSide(width:0.5,color: AppColors.fieldEnableBorderColor), borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
        enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width:0.5,color: AppColors.fieldDisableBorderColor), borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
        suffixIcon: widget.isShowSuffixIcon
            ? widget.isPassword
            ? IconButton(
            icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility, color: AppColors.colorBlack, size: 20),
            onPressed: _toggle)
            : widget.isIcon
            ? IconButton(
          onPressed: widget.onSuffixTap,
          icon:  Icon(
            widget.isSearch ? Icons.search_outlined : widget.isPicker ? Icons.keyboard_arrow_down:Icons.camera_alt_outlined,
            size: 20,
            color: widget.isPicker ? AppColors.colorBlack400 : AppColors.primaryColor,
          ),
        )
            : null
            : null,
      ),
      onFieldSubmitted: (text) => widget.nextFocus != null ? FocusScope.of(context).requestFocus(widget.nextFocus) : null,
      onChanged: (text)=> widget.onChanged!(text),
    ) : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.needLabel ? LabelText(text: widget.labelText.toString()) : const SizedBox(),
        widget.needLabel ? const SizedBox(height: Dimensions.space8) : const SizedBox(),
        TextFormField(
          maxLines: widget.maxLines,
          readOnly: widget.readOnly,
          style: regularDefault.copyWith(color: AppColors.colorBlack),
          textAlign: TextAlign.left,
          cursorColor: AppColors.colorBlack,
          controller: widget.controller,
          autofocus: false,
          textInputAction: widget.inputAction,
          enabled: widget.isEnable,
          focusNode: widget.focusNode,
          validator: widget.validator,
          keyboardType: widget.textInputType,
          obscureText: widget.isPassword?obscureText:false,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            //contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
            hintText: widget.hintText,
            hintStyle: regularSmall.copyWith(color: AppColors.colorBlack300),
            fillColor: AppColors.transparentColor,
            filled: true,
            border: OutlineInputBorder(borderSide: const BorderSide(width:0.5,color: AppColors.fieldDisableBorderColor), borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
            focusedBorder: OutlineInputBorder(borderSide: const BorderSide(width:0.5,color: AppColors.fieldEnableBorderColor), borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
            enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width:0.5,color: AppColors.fieldDisableBorderColor), borderRadius: BorderRadius.circular(Dimensions.defaultRadius)),
            suffixIcon: widget.isShowSuffixIcon
                ? widget.isPassword
                ? IconButton(
                icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility, color: AppColors.colorBlack, size: 20),
                onPressed: _toggle)
                : widget.isIcon
                ? IconButton(
              onPressed: widget.onSuffixTap,
              icon:  Icon(
                widget.isSearch ? Icons.search_outlined : widget.isPicker ? Icons.keyboard_arrow_down:Icons.camera_alt_outlined,
                size: 20,
                color: widget.isPicker ? AppColors.colorBlack400 : AppColors.primaryColor,
              ),
            )
                : null
                : null,
          ),
          onFieldSubmitted: (text) => widget.nextFocus != null ? FocusScope.of(context).requestFocus(widget.nextFocus) : null,
          onChanged: (text)=> widget.onChanged!(text),
        )
      ],
    ) : TextFormField(
      maxLines: widget.maxLines,
      readOnly: widget.readOnly,
      style: regularDefault.copyWith(color: AppColors.colorBlack),
      textAlign: TextAlign.left,
      cursorColor: AppColors.colorBlack,
      controller: widget.controller,
      autofocus: false,
      textInputAction: widget.inputAction,
      enabled: widget.isEnable,
      focusNode: widget.focusNode,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      obscureText: widget.isPassword?obscureText:false,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        contentPadding: const EdgeInsets.only(top: 12, left: 0, right: 0),
        labelText:  widget.labelText?.tr,
        labelStyle: semiBoldDefault.copyWith(color: AppColors.colorBlack400, fontWeight: FontWeight.w600),
        hintText: widget.hintText,
        hintStyle: regularSmall.copyWith(color: AppColors.colorBlack300),
        fillColor: AppColors.transparentColor,
        filled: true,
        border: const UnderlineInputBorder(borderSide: BorderSide(width:0.5,color: AppColors.fieldDisableBorderColor)),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(width:0.5,color: AppColors.fieldEnableBorderColor)),
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width:0.5,color: AppColors.fieldDisableBorderColor)),
        suffixIcon: widget.isShowSuffixIcon
            ? widget.isPassword
            ? IconButton(
            icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility, color: AppColors.colorBlack, size: 20),
            onPressed: _toggle)
            : widget.isIcon
            ? IconButton(
          onPressed: widget.onSuffixTap,
          icon:  Icon(
            widget.isSearch ? Icons.search_outlined : widget.isPicker ? Icons.keyboard_arrow_down:Icons.camera_alt_outlined,
            size: 20,
            color: widget.isPicker ? AppColors.colorBlack400 : AppColors.primaryColor,
          ),
        )
            : null
            : null,
      ),
      onFieldSubmitted: (text) => widget.nextFocus != null ? FocusScope.of(context).requestFocus(widget.nextFocus) : null,
      onChanged: (text)=> widget.onChanged!(text),
    );
  }

  void _toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
