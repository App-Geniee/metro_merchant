import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/core/utils/app_images.dart';
import 'package:metro_merchant/core/utils/dimensions.dart';
import 'package:metro_merchant/core/utils/font_styles.dart';
import 'package:metro_merchant/data/controller/chat_controller.dart';
import 'package:metro_merchant/views/components/text_field/custom_text_field.dart';

class LiveChatScreen extends StatefulWidget {
  const LiveChatScreen({Key? key}) : super(key: key);

  @override
  State<LiveChatScreen> createState() => _LiveChatScreenState();
}

class _LiveChatScreenState extends State<LiveChatScreen> {
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
            child: const Padding(
              padding: EdgeInsets.only(bottom: Dimensions.space15),
              child: Icon(Icons.arrow_back, color: AppColors.colorBlack, size: 20)
            )
          ),
          titleSpacing: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MetroExpress Ltd", style: boldLarge.copyWith(color: AppColors.colorBlack)),
              const SizedBox(height: Dimensions.space3),
              Text(
                "Currently replying in a minute",
                style: semiBoldSmall.copyWith(color: AppColors.colorBlack400),
              )
            ],
          ),
        ),
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            padding: Dimensions.screenDefaultHV,
            physics: const BouncingScrollPhysics(),
            child: ListView.separated(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: Dimensions.space8),
              itemBuilder: (context, index){
                return Align(
                    alignment: (messages[index].messageType == "receiver" ? Alignment.topLeft : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: messages[index].messageType  == "receiver" ? const BorderRadius.only(
                            topRight: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)
                        ) : const BorderRadius.only(
                            topLeft: Radius.circular(12), bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)
                        ),
                        color: (messages[index].messageType  == "receiver" ? AppColors.secondaryColor900 : AppColors.primaryColor800),
                      ),
                      padding: const EdgeInsets.all(Dimensions.space15),
                      child: Text(messages[index].messageContent, style: regularDefault.copyWith(
                          color: messages[index].messageType  == "receiver" ? AppColors.colorWhite : AppColors.colorWhite
                      )),
                    )
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: AnimatedPadding(
            padding: MediaQuery.of(context).viewInsets,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: Dimensions.space15, vertical: Dimensions.space12),
              color: AppColors.screenBgColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset(AppImages.attachFileIcon, height: 20, width: 20),
                  ),
                  const SizedBox(width: Dimensions.space15),
                  Expanded(
                    flex: 4,
                    child: CustomTextField(
                      hintText: "Write here",
                      controller: TextEditingController(),
                      onChanged: (value){},
                    ),
                  ),
                  const SizedBox(width: Dimensions.space15),
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      "Send",
                      style: boldDefault.copyWith(color: AppColors.secondaryColor900),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
