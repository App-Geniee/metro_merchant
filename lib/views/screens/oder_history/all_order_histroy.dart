import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
class AllOrderHistroy extends StatefulWidget {
  const AllOrderHistroy({Key? key}) : super(key: key);

  @override
  State<AllOrderHistroy> createState() => _AllOrderHistroyState();
}

class _AllOrderHistroyState extends State<AllOrderHistroy> {
  bool click=true;
  TextEditingController dateinput = TextEditingController();
  List dropDownData=[
    {"title":"Shop name1","value":"1"},
    {"title":"Shop name2","value":"2"}
  ];
  String select="";


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
           children: [
             Expanded(
                 child: Padding(
                   padding: EdgeInsets.only(right: 20),
                   child: TextFormField(
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.search),
                       label: Text("Enter customer name / phone",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.colorBlack300),)
                     ),

                   ),
                 )),
             InkWell(
               onTap: (){
                 setState(() {
                   click=!click;
                 });
               },
               child: Container(
                 margin: EdgeInsets.only(right: 20),
                 child: Row(
                   children: [
                     if(click==true)...[
                       Text("Show All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.secondaryColor900),),
                       Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.secondaryColor900,)

                     ]
                     else...[
                       Text("Hide all",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.secondaryColor900),),
                       Icon(Icons.keyboard_arrow_up,color: AppColors.secondaryColor900,)
                     ]

                   ],
                 ),
               ),
             )
           ],
         ),
         SizedBox(height: 10,),

         Visibility(
           visible: click==false,
           child: Column(
             children: [
               Form(
                 child: Column(
                   children: [
                     TextFormField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.search),
                         label: Text("Enter ticket ID",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: AppColors.colorBlack300),)
                       ),
                     ),
                     TextField(
                       controller: dateinput,
                       //editing controller of this TextField
                       decoration: InputDecoration(
                         //icon of text field
                           label: Padding(
                             padding: const EdgeInsets.only(top: 20),
                             child: Text("Filter by date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.colorBlack300),),
                           ) ,
                           prefixIcon: Icon(Icons.calendar_today_outlined,color: AppColors.colorBlack300,size: 12,),
                           focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Color(0xff9AA0A8))
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
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(5,0,10.0,0),
                       child: InputDecorator(
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.shopping_bag_outlined
                           ),
                           labelText: 'Select shop name',
                           labelStyle: TextStyle(fontSize: 12,color: AppColors.colorBlack300,fontWeight: FontWeight.w600),
                           border: UnderlineInputBorder(
                               borderRadius: BorderRadius.circular(15.0)),
                           contentPadding: const EdgeInsets.fromLTRB(10,20,0,0),
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


                     // ElevatedButton(
                     //     onPressed: _presentDatePicker, child: const Text('Select Date')),

                     // display the selected date

                   ],
                 ),
               )

             ],
           ),
         ),
         SizedBox(height: 10,),
         Expanded(
           child: ListView.builder(
             itemCount: 5,
             itemBuilder: (context,index){
               return Container(
                 margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                 decoration: BoxDecoration(
                   border: Border.all(color: AppColors.colorBlack300),
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),

                          color: Color(0xffDEFDFF),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text("Pickup approve",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10,color: Color(0xff00BBC7)),),
                          )
                          ,
                        ),
                        Padding(
                          padding:EdgeInsets.only(right:100),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 0),

                            color: Color(0xffDEEDFF),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text("Exchangee",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10,color: AppColors.colorBlack300),),
                            )
                            ,
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: PopupMenuButton<int>(
                          icon: Image(image: AssetImage("assets/icons/drawericon.png"),
                          width: 4,
                          height: 16,),
                          color:Colors.white,
                          shadowColor: Colors.white,
                          itemBuilder: (context)=>[
                            PopupMenuItem(

                              value: 1,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("View",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            PopupMenuItem(

                              value: 2,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Edit",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            PopupMenuItem(

                              value: 3,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Delete",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            PopupMenuItem(

                              value: 4,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Ticket",style: TextStyle(fontSize: 14,color: AppColors.colorBlack300,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )

                      ],
                    ),
                   SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: EdgeInsets.only(left: 10),
                         child: Text("Farhana Tanjin Monika",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.colorBlack),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 40),
                         child: Image(
                           image: AssetImage("assets/icons/phone1.png"),
                           width: 13,
                           height: 13,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 30),
                         child: Text("01715548748",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.colorBlack),),
                       )


                     ],
                   ),
                     SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: Text("Track ID: DM090422LU9W9R",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorBlack300),),
                     ),
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(10,10,0,0),
                           child: Text("Delivery type :",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorBlack300),),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(0,10,0,0),
                           child: Text("Regular",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xff246DDC)),),
                         )
                       ],
                     ),
                     Row(
                       children: [
                         Padding(
                           padding:EdgeInsets.fromLTRB(10,10,0,0),
                           child: Image(
                             image: AssetImage("assets/icons/shoping1.png"),
                             width: 13,
                             height: 13,

                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(5,10.0,0,0),
                           child: Text("Moni’s collection",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                         )
                       ],
                     ),
                     Row(
                       children: [
                         Padding(
                           padding:EdgeInsets.fromLTRB(10,10,0,0),
                           child: Icon(Icons.location_on,color: AppColors.colorBlack300,size: 13,

                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(5,10.0,0,0),
                           child: Text("House-11 (2nd floor)Dhanmondi, \nDhaka-1205.",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                         )
                       ],
                     ),
                     SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(10,0,10, 0),
                       child: Divider(color: AppColors.colorBlack300,),
                     ),
                     IntrinsicHeight(
                       child: Padding(
                         padding: const EdgeInsets.only(bottom: 20),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 2, 0),
                                 child: Text("COD",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.colorGreen),)),
                            Text("৳",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack,fontSize: 12),),
                            Text("20.000",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                             VerticalDivider(
                               color: AppColors.colorBlack300,
                             ),
                             Text("Charge",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                             Text("৳",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack,fontSize: 12),),
                             Text("80",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                             VerticalDivider(
                               color: AppColors.colorBlack300,
                             ),
                             Text("Discount",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                             Text("৳",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack,fontSize: 12),),
                             Padding(
                               padding: const EdgeInsets.only(right: 20),
                               child: Text("80",style: TextStyle(fontWeight: FontWeight.w700,color: AppColors.colorBlack300,fontSize: 12),),
                             ),











                           ],
                         ),
                       ),
                     )


                   ],
                 ),

               );
             },
           ),
         )
       ],
      ),
    );
  }
}
