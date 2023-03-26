import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class SelectCategoryScreen extends StatefulWidget {
  const SelectCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {

  bool isSearch = false;
  final categoryList = [
    "Book",
    "Medicine",
    "Laptop",
    "Electronics",
    "Router",
    "Book",
    "Medicine",
    "Laptop",
    "Electronics",
    "Router",
    "Book",
    "Medicine",
    "Laptop",
    "Electronics",
    "Router",
    "Book",
    "Medicine",
    "Laptop",
    "Electronics",
    "Router",
  ];
  int selectedIndex = 0;

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
            child: const Icon(Icons.arrow_back_outlined, color: AppColors.colorBlack, size: 20),
          ),
          titleSpacing: 0,
          title: isSearch ? Padding(
            padding: const EdgeInsets.only(right: Dimensions.space20, bottom: Dimensions.space8),
            child: CustomTextField(
              hintText: "Search by category name",
              onChanged: (value){}
            ),
          ) : Text(
            "Select Category",
            style: boldLarge.copyWith(color: AppColors.colorBlack)
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: Dimensions.space20),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isSearch = !isSearch;
                  });
                },
                child: Icon(
                  isSearch ? Icons.clear : Icons.search,
                  color: isSearch ? AppColors.secondaryColor900 : AppColors.colorBlack,
                  size: 20
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(categoryList.length, (index) => GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space15),
                decoration: BoxDecoration(
                  color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.transparentColor,
                  border: Border(
                      bottom: BorderSide(
                            color: index == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack100,
                            width: 1
                        )
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      categoryList[index],
                      style: semiBoldDefault.copyWith(color: index == selectedIndex ? AppColors.colorWhite : AppColors.colorBlack400, fontWeight: FontWeight.w600),
                    ),
                    index == selectedIndex ? const Icon(Icons.check, color: AppColors.colorWhite, size: 20) : const SizedBox()
                  ],
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}