import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_successfull.dart';
class ProductCatrogory extends StatefulWidget {
  const ProductCatrogory({Key? key}) : super(key: key);

  @override
  _ProductCatrogoryState createState() => _ProductCatrogoryState();
}

class _ProductCatrogoryState extends State<ProductCatrogory> {
  final product=['laptop','computer','fan','other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(2.0),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0,0),
                child: IconButton(
                    onPressed: (){
                      Get.offAll(()=>SignUpScreen());

                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,)),

              ),
              SizedBox(width: 10,),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child:    Text("Select categrory",style: TextStyle(fontSize: 16,color: Colors.black),) ,
              ),
              SizedBox(width: 150,),
              IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.search_outlined,size: 30,color: Colors.black,))



            ],
          ),
          SizedBox(height: 5,),
          Divider(color: AppColors.colorBlack300,),

          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,0,0),
                    child: Text(product[index],style: TextStyle(fontSize: 14,color: AppColors.colorBlack300),),
                  );

                },
                separatorBuilder: (context,index){
                  return Divider(thickness: 2,height: 40,);
                },
                itemCount: product.length),
          )

          // ListView.builder(
          //
          //     physics: NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     itemCount:18,
          //     scrollDirection: Axis.vertical,
          //
          //     itemBuilder: (context,index){
          //       return InkWell(
          //         onTap: (){
          //
          //         },
          //
          //         child: Card(
          //
          //
          //           child: Column(
          //             children: [
          //               SizedBox(width: 10,),
          //
          //               SizedBox(width: 130,),
          //
          //
          //             ],
          //
          //           ),
          //
          //
          //         ),
          //       );
          //     })

        ],
      ),

    );
  }
}
