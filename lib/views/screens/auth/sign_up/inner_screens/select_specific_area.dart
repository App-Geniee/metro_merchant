import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class SelectSpecificAreaScreen extends StatefulWidget {
  const SelectSpecificAreaScreen({Key? key}) : super(key: key);

  @override
  State<SelectSpecificAreaScreen> createState() => _SelectSpecificAreaScreenState();
}

class _SelectSpecificAreaScreenState extends State<SelectSpecificAreaScreen> {

  bool isSearch = false;
  var areaList = [
    {
      "district" : "DHAKA",
      "area" : ["Faridpur", "Manikganj", "Savar", "Gazipur"]
    },
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
                                onTap: (){
                                  setState(() {
                                    selectedIndex = areaIndex;
                                  });
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsetsDirectional.symmetric(vertical: Dimensions.space15, horizontal: Dimensions.space15),
                                  decoration: BoxDecoration(
                                      color: areaIndex == selectedIndex ? AppColors.secondaryColor900 : AppColors.transparentColor,
                                      border: Border(
                                          bottom: BorderSide(
                                              color: areaIndex == selectedIndex ? AppColors.secondaryColor900 : AppColors.colorBlack100,
                                              width: 1
                                          )
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        data[index].area![areaIndex] ?? "",
                                        style: semiBoldDefault.copyWith(color: areaIndex == selectedIndex ? AppColors.colorWhite : AppColors.colorBlack400, fontWeight: FontWeight.w600),
                                      ),
                                      areaIndex == selectedIndex ? const Icon(
                                          Icons.check,
                                          color: AppColors.colorWhite,
                                          size: 16
                                      ) : const SizedBox()
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
