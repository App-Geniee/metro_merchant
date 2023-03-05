import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metro_merchant/views/screens/home/home_screen.dart';

import '../../../core/utils/app_colors.dart';
class TransitonHistroy extends StatefulWidget {
  const TransitonHistroy({Key? key}) : super(key: key);

  @override
  _TransitonHistroyState createState() => _TransitonHistroyState();
}

class _TransitonHistroyState extends State<TransitonHistroy> {
  TextEditingController dateinput = TextEditingController();
   final product=['debit','cerdit'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: (){
                Get.offAll(()=>HomeScreen());
                },
                icon: Icon(Icons.arrow_back,size: 20,color: AppColors.colorBlack,),
              ),
              Text("Back",style: TextStyle(fontSize: 16,color: AppColors.colorBlack,fontWeight: FontWeight.bold),)
            ],
          ),
          Divider(color: AppColors.colorBlack300,),
          SizedBox(height: 16,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child:Text("Credit Transaction History",style: TextStyle(fontSize: 16,color: AppColors.colorBlack800,fontWeight: FontWeight.bold),)
            ,
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child:Text("পার্সেলের ডেলিভারি চার্জে ২০% ডিসকাউন্ট পেতে মেট্রো ক্রেডিট ব্যবহার করুন",style: TextStyle(fontSize: 14,color: AppColors.colorBlack800),)
            ,
          ),
          SizedBox(height: 15,),
          Container(
              padding: EdgeInsets.all(15),
              height:70,
              child:Center(
                  child:TextField(
                    controller: dateinput,
                    //editing controller of this TextField
                    decoration: InputDecoration(
                      //icon of text field
                        labelText: "Filter by date" ,
                        prefixIcon: Icon(Icons.calendar_today_outlined,color: AppColors.colorBlack300),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.colorBlack300)
                        )///label text of field
                    ),
                    readOnly: true,  //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101)
                      );

                      if(pickedDate != null ){
                        print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                        // String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                        // print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          // dateinput.text = formattedDate; //set output date to TextField value.
                        });
                      }else{
                        print("Date is not selected");
                      }
                    },
                  )
              )
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Date/Transaction ID",style: TextStyle(fontSize: 11,color: AppColors.colorBlack),),
              ),
              Text("Amount type",style: TextStyle(fontSize: 11,color: AppColors.colorBlack),),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text("Paid out",style: TextStyle(fontSize: 11,color: AppColors.colorBlack),),
              ),




            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Divider(color: AppColors.colorBlack300,),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,0,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("25/02/2022",style: TextStyle(fontSize: 11,color: AppColors.colorBlack300),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("321654987",style: TextStyle(fontSize: 14,color: Color(0xffF96800)),),
                            ),
                            Text(product[index],style: TextStyle(fontSize: 12),),
                        if(product=='cerdit')...[
                          Container(
                            width: 27,
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor900,
                              borderRadius: BorderRadius.circular(7)
                            ),
                            child: Text("-250",style: TextStyle(fontSize: 11,color: AppColors.colorWhite),),
                          )

                        ]
                            else...[
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child:    Container(
                                  width: 35,
                                  height:18,
                                  decoration: BoxDecoration(
                                      color: AppColors.secondaryColor900,
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: Center(child: Text("-250",style: TextStyle(fontSize: 11,color: AppColors.colorWhite),)),
                                ),
                              )


                        ]



                          ],
                        )
                      ],
                    )
                  );

                },
                separatorBuilder: (context,index){
                  return Divider(thickness: 2,height: 40,);
                },
                itemCount: 2),
          )



        ],
      ),

    );
  }
}
