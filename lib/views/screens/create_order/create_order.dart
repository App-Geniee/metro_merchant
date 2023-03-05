import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/home/home_screen.dart';

import '../../../core/utils/app_colors.dart';
class CreateOrder extends StatefulWidget {
  const CreateOrder({Key? key}) : super(key: key);

  @override
  _CreateOrderState createState() => _CreateOrderState();
}

class _CreateOrderState extends State<CreateOrder> {
  final _charitem=["Mobile","Bank transfer"];
  String _verticalchar="Mobile";
  int index=0;
  List dropDownData=[
    {"title":"Shop name1","value":"1"},
    {"title":"Shop name2","value":"2"}
  ];
  String select="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                Text("Create New Parcel",style: TextStyle(fontSize: 16,color: AppColors.colorBlack,fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(color: AppColors.colorBlack300,),
           const SizedBox(height: 16.0,),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor300,
                  border: Border.all(color: AppColors.colorBlue),
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Image(
                          image: AssetImage("assets/icons/chat.png"),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text("দুপুর ৩ টার পর দেয়া পার্সেল রিকোয়েস্ট পর দিন পিক হবে",style: TextStyle(fontSize:12,color: AppColors.colorBlack800 ),),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child:Text("Select shop",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),)
            ),
            SizedBox(height: 10,),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,10.0,0),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: select,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10,0,0,0),

                                ),
                                value: ""),
                            ...dropDownData.map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                                  () {
                                select = newValue!;
                                print(select);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 32,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor100,

                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,10,0,0),
                        child: Text("Customer Information",style: TextStyle(fontSize: 12,color: AppColors.colorBlack),),
                      ),

                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child:  Text("Customer name",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),) ,
                  ),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                      child: TextFormField(

                        decoration: InputDecoration(


                          label:Padding(
                            padding: const EdgeInsets.only(left: 5),
                          ),
                          enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                            borderSide: BorderSide(

                                color: AppColors.colorBlack300),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppColors.colorBlack300)
                          ),

                        ),



                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15,20,0,0),
                    child:  Text("Customer number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),) ,
                  ),



                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                    child: TextFormField(

                      decoration: InputDecoration(


                        label:Padding(
                          padding: const EdgeInsets.only(left: 5),
                        ),
                        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(

                              color: AppColors.colorBlack300),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.colorBlack300)
                        ),

                      ),



                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15,20,0,0),
                    child:  Text("Address",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),) ,
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                    child: TextFormField(

                      decoration: InputDecoration(


                        label:Padding(
                          padding: const EdgeInsets.only(left: 5),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          //<-- SEE HERE
                          borderSide: BorderSide(


                              color: AppColors.colorBlack300),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.colorBlack300)
                        ),

                      ),



                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 32,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor100,

                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,10,0,0),
                        child: Text("Delivery Informationt",style: TextStyle(fontSize: 12,color: AppColors.colorBlack),),
                      ),

                    ),
                  ),

                  SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Weight",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,10.0,0),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: select,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10,0,0,0),

                                ),
                                value: ""),
                            ...dropDownData.map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                                  () {
                                select = newValue!;
                                print(select);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Area",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,10.0,0),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: select,
                          isDense: true,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            const DropdownMenuItem(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10,0,0,0),

                                ),
                                value: ""),
                            ...dropDownData.map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                  child: Text(e['title']), value: e['value']);
                            }).toList(),
                          ],
                          onChanged: (newValue) {
                            setState(
                                  () {
                                select = newValue!;
                                print(select);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Product price",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                    child: TextFormField(

                      decoration: InputDecoration(


                        label:Padding(
                          padding: const EdgeInsets.only(left: 5),
                        ),
                        enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(

                              color: AppColors.colorBlack300),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.colorBlack300)
                        ),

                      ),



                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Instruction",style: TextStyle(fontSize: 12,color: AppColors.colorBlack400),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child:Text("অফিস কালাকালীন সময় ডেলিভারি দিতে হবে |\n আগে কল দিয়ে যাবেন",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),

                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(color: AppColors.colorBlack400,) ,
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("আপনার পিকআপ এড্রেস থেকে ডেলিভারি চার্জ",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child:  Text("ক্যাশ কালেকশন",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child:  Text("৳0",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      )



                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child:  Text("ডেলিভারি চার্জ",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child:  Text("৳0",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      )



                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child:  Text("COD",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child:  Text("৳0",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      )



                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child:  Text("ডিসকাউন্ট",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child:  Text("৳0",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      )



                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(color: AppColors.colorBlack300,),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child:  Text("সর্বমোট পরিমান",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child:  Text("৳0",style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                      )



                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomButton(context, "Create Order", () {

                      showDialog(
                          context: context,
                          builder: (ctx)=>AlertDialog(
                            title: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Hello!"),
                                    Icon(Icons.close)
                                  ],
                                ),
                                Divider(color: AppColors.colorBlack300,),
                                SizedBox(height: 20,),
                                Center(
                                  child: Image(
                                    image: AssetImage("assets/icons/calltoaction.png"),
                                    width: 50,
                                    height: 40,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 10,0),
                                  child: Text("Order Placed Successfully! Write \n    thisID on Parcel. Tracking\nID:DM090422LU9W9R"
                                  ,style: TextStyle(fontSize: 14,color: AppColors.colorBlack),),
                                ),
                                SizedBox(height: 10,),
                                Divider(color: AppColors.colorBlack300,)
                              ],
                            ),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),

                            actions: [
                              TextButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                child: Center(child: Text("CLOSE",style: TextStyle(fontSize: 14,color: Colors.black),)),
                              )
                            ],
                          ));
                    }, AppColors.secondaryColor900),
                  )














                ],
              ),
            )








          ],
        ),
      ),

    );
  }
  Widget CustomButton(BuildContext context,String text,void Function()function,Color color){
    return InkWell(

      onTap: function,
      child:Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          height:52,
          width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(9)),


          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),
                  ),
                ),


              ],

            ),
          ),

        ),
      ) ,
    );
  }
}
