import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/core/utils/app_colors.dart';
import 'package:metro_merchant/views/screens/ticket_dashbord/ticket_dashborad.dart';

import '../../create_order/create_order.dart';
import '../../froad_dashborad/froad_dashborad.dart';
import '../../transtion_histroy/transtion_histroy.dart';
class HomeBar extends StatefulWidget {
  const HomeBar({Key? key}) : super(key: key);

  @override
  _HomeBarState createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(14),
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
               Padding(
                 padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                 child:  IconButton(
                   onPressed: (){
                     Scaffold.of(context).openDrawer();

                   },
                     icon: Icon(Icons.menu)),
               ),
             Padding(
               padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
               child: Image(
                 image: AssetImage("assets/images/small.png"),
                 width: 63,
                 height: 30,


               ),
             ),
                CustomButton(context, "Create Parcel", () {
                  Get.offAll(()=>CreateOrder());
                }, AppColors.secondaryColor900),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  child: Image(
                    image: AssetImage("assets/icons/notification.png"),
                    width: 17,
                    height: 20,
                  ),
                ),






              ],
            ),
            Divider(color: AppColors.colorBlack300,),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Hello",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Shopix.com.bd | Merchant | Met-52545",style: TextStyle(color: AppColors.colorBlack300,fontSize: 12,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child:    Image(
                image: AssetImage("assets/images/slideimage.png"),
              ) ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 30,
                      height: 5,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5,20,0,0),
                  child: Container(
                    width:10,
                    height: 5,
                    color: AppColors.secondaryColor300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5,20,0,0),
                  child: Container(
                    width:10,
                    height: 5,
                    color: AppColors.secondaryColor300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5,20,0,0),
                  child: Container(
                    width:10,
                    height: 5,
                    color: AppColors.secondaryColor300,
                  ),
                ),



              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12)
                ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children: [
                     InkWell(
                       onTap: (){
                         Get.offAll(()=>TransitonHistroy());
                       },


                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(20,20,0,10),
                         child: Image(
                           image: AssetImage("assets/images/ticket.png"),
                           width: 32,
                           height: 32,
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Get.offAll(()=>TicketDashBord());

                       },


                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(20,20,0,10),
                         child: Image(
                           image: AssetImage("assets/images/transaction.png"),
                           width: 32,
                           height: 32,
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Get.offAll(()=>FroadDashBorad());
                       },
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(20,20,0,10),
                         child: Image(
                           image: AssetImage("assets/images/intrent.png"),
                           width: 32,
                           height: 32,
                         ),
                       ),
                     ),
                     InkWell(
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(20,20,20,10),
                         child: Image(
                           image: AssetImage("assets/images/puzzle.png"),
                           width: 32,
                           height: 32,
                         ),
                       ),
                     ),

                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                       child: Text("Credits",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                       child: Text("Tickets",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                       child: Text("Fraud",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                       child: Text("Addons",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),),
                     ),

                   ],
                 ),




               ],
             ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Delivery & return trend",style: TextStyle(fontSize: 16,color: AppColors.colorBlack),),
            ),
            Container(
                padding: EdgeInsets.all(15),
                height:70,
                child:Center(
                    child:TextField(
                      controller: dateinput,
                      //editing controller of this TextField
                      decoration: InputDecoration(
                          //icon of text field
                          labelText: "" ,
                          suffixIcon: Icon(Icons.calendar_today,color: AppColors.secondaryColor300,),
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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child:    Container(
                    width: 156,
                    height: 96,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment(0.8,1),
                            colors: <Color>[
                              Color(0xff48F5B7 ),
                              Color(0xff008B59 ),

                            ]
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10,10,0,0),
                            child: Text("150",style: TextStyle(fontSize: 24,color: AppColors.colorWhite),)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Image(
                                image: AssetImage("assets/icons/car.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("On process",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),)

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child:    Container(
                    width: 156,
                    height: 96,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment(0.8,1),
                            colors: <Color>[
                              Color(0xff80B3FF ),
                              Color(0xff3868AF ),

                            ]
                        ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10,10,0,0),
                            child: Text("36 (50%)",style: TextStyle(fontSize: 24,color: AppColors.colorWhite),)),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Image(
                                image: AssetImage("assets/icons/retray.png"),
                                width: 18,
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Order return",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),)

                          ],
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child:    Container(
                      width: 156,
                      height: 96,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(0.8,1),
                              colors: <Color>[
                                Color(0xffFFA665 ),
                                Color(0xffBB4F00 ),

                              ]
                          ),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10,10,0,0),
                              child: Text("45",style: TextStyle(fontSize: 24,color: AppColors.colorWhite),)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image(
                                  image: AssetImage("assets/icons/todo.png"),
                                  width: 18,
                                  height: 20,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text("Total returned",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),)

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                    child:    Container(
                      width: 156,
                      height: 96,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment(0.8,1),
                              colors: <Color>[
                                Color(0xffCBA3FF ),
                                Color(0xff742AD2 ),

                              ]
                          ),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(10,10,0,0),
                              child: Text("78 (50%)",style: TextStyle(fontSize: 24,color: AppColors.colorWhite),)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Image(
                                  image: AssetImage("assets/icons/car.png"),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text("Delivered",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),)

                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),









          ],
        ),
      ),
    );
  }
  Widget CustomButton(BuildContext context,String text,void Function()function,Color color){
    return InkWell(

      onTap: function,
      child:Padding(
        padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
        child: Container(
          height:32,
          width: 100,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(7)),


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
