import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/route/route.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class SelectAreaScreen extends StatefulWidget {
  const SelectAreaScreen({Key? key}) : super(key: key);

  @override
  State<SelectAreaScreen> createState() => _SelectAreaScreenState();
}

class _SelectAreaScreenState extends State<SelectAreaScreen> {

  bool isSearch = false;
  var areaList = [
    {
      "district" : "DHAKA",
      "area" : ["Faridpur", "Manikganj", "Savar", "Gazipur"]
    },
    {
      "district" : "BARISAL",
      "area" : ["Barguna", "Barisal", "Bhola", "Jhalokathi", "Patuakhali", "Perojpur"]
    },
    {
      "district" : "MYMENSHING",
      "area" : ["Barguna", "Barisal", "Bhola", "Jhalokathi", "Patuakhali", "Perojpur"]
    },
    {
      "district" : "SYLHET",
      "area" : ["Hobiganj", "Moulvibazar"]
    }
  ];
  late var futureData = Future.value(areaList.map((i) => AreaInfo.fromJson(i)).toList());
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
                hintText: "Search by area name",
                onChanged: (value){}
            ),
          ) : Text(
              "Back",
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
          child: FutureBuilder<List<AreaInfo>>(
            future: futureData,
            builder: (context, snapshot) {
              if(snapshot.hasData){
                List<AreaInfo>? data = snapshot.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(data!.length, (index) => Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space12, horizontal: Dimensions.space15),
                        color: AppColors.primaryColor100,
                        child: Text(
                          data[index].district ?? "",
                          style: boldSmall.copyWith(color: AppColors.colorBlack400),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(data[index].area!.length, (areaIndex) => GestureDetector(
                            onTap: () => Get.toNamed(AppRoute.selectSpecificAreaScreen),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space15),
                              decoration: const BoxDecoration(
                                  color: AppColors.transparentColor,
                                  border: Border(
                                      bottom: BorderSide(
                                          color: AppColors.colorBlack100,
                                          width: 1
                                      )
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data[index].area![areaIndex] ?? "",
                                    style: semiBoldDefault.copyWith(color: AppColors.colorBlack400, fontWeight: FontWeight.w600),
                                  ),
                                  const Icon(
                                      Icons.arrow_forward_ios,
                                      color: AppColors.secondaryColor900,
                                      size: 16
                                  )
                                ],
                              ),
                            ),
                          ))
                      )
                    ],
                  ))
                );
              }

              return const CircularProgressIndicator();
            },
          ),
      ),
    ));
  }
}

class AreaInfo {
  String? district;
  List<String>? area;

  AreaInfo({this.district, this.area});

  AreaInfo.fromJson(Map<String, dynamic> json) {
    district = json['district'];
    area = json['area'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['district'] = district;
    data['area'] = area;
    return data;
  }
}
