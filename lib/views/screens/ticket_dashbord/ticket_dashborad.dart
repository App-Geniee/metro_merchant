
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:metro_merchant/views/screens/admin_issue/edit_issue.dart';

import '../../../core/utils/app_colors.dart';
import '../home/home_screen.dart';
class TicketDashBord extends StatefulWidget {
  const TicketDashBord({Key? key}) : super(key: key);

  @override
  _TicketDashBordState createState() => _TicketDashBordState();
}

class _TicketDashBordState extends State<TicketDashBord> {
  TextEditingController dateinput = TextEditingController();
  List dropDownData=[
    {"title":"Shop name1","value":"1"},
    {"title":"Shop name2","value":"2"}
  ];
  String select="";
  final product=['laptop','computer','fan','other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(14),
        child: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){
                  Get.offAll(()=>HomeScreen());
                },
                icon: Icon(Icons.arrow_back,size: 20,color: AppColors.colorBlack,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text("Ticketing",style: TextStyle(fontSize: 16,color: AppColors.colorBlack,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 99,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor900,
                  borderRadius: BorderRadius.circular(7)
                ),
              child:  Center(
                  child: Text("Add Ticket",style: TextStyle(fontSize: 12,color: AppColors.colorWhite),),

                )

              )
            ],
          ),
          Divider(color: AppColors.colorBlack300,),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 156,

                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  border: Border.all(color: AppColors.colorBlack100),
                  borderRadius: BorderRadius.circular(7),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20,10,0,0),
                      child:  CircleAvatar(
                        backgroundColor: Color(0xffF9EDFF),
                        child: Image(
                          image: AssetImage("assets/icons/ticket1.png"),
                          width: 20,
                          height: 14,
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child:Text("Total Ticket",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,0,0),
                            child: Text("02",style: TextStyle(fontSize: 20,color: AppColors.colorBlack),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child:Text("New",style: TextStyle(fontSize: 10,color: Color(0xffEA1C4B)),) ,
                          )

                        ],
                      ),
                    )


                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                width: 156,

                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  border: Border.all(color: AppColors.colorBlack100),
                  borderRadius: BorderRadius.circular(7),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20,10,0,0),
                      child:  CircleAvatar(
                        backgroundColor: Color(0xffDDFFFF),
                        child: Image(
                          image: AssetImage("assets/icons/ticket2.png"),
                          width: 20,
                          height: 20,
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child:Text("Solved Tickets",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,0,0),
                            child: Text("12",style: TextStyle(fontSize: 20,color: AppColors.colorBlack),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child:Text("SOLVED",style: TextStyle(fontSize: 10,color: AppColors.colorGreen),) ,
                          )

                        ],
                      ),
                    )


                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 156,

                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  border: Border.all(color: AppColors.colorBlack100),
                  borderRadius: BorderRadius.circular(7),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20,10,0,0),
                      child:  CircleAvatar(
                        backgroundColor: Color(0xffD9E8FF),
                        child: Image(
                          image: AssetImage("assets/icons/ticket3.png"),
                          width: 16,
                          height: 20,
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child:Text("Opened Tickets",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,0,0),
                            child: Text("03",style: TextStyle(fontSize: 20,color: AppColors.colorBlack),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child:Text("OPENED",style: TextStyle(fontSize: 10,color: AppColors.colorBlue),) ,
                          )

                        ],
                      ),
                    )


                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                width: 156,

                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  border: Border.all(color: AppColors.colorBlack100),
                  borderRadius: BorderRadius.circular(7),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20,10,0,0),
                      child:  CircleAvatar(
                        backgroundColor: Color(0xffFFF3EA),
                        child: Image(
                          image: AssetImage("assets/icons/time.png"),
                          width: 20,
                          height: 20,
                        ) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child:Text("Pending Ticketst",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,0,0),
                            child: Text("12",style: TextStyle(fontSize: 20,color: AppColors.colorBlack),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child:Text("PENDING",style: TextStyle(fontSize: 10,color: AppColors.colorWarning2),) ,
                          )

                        ],
                      ),
                    )


                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 16.0,),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Search your tickets",style: TextStyle(fontSize: 16,color: Colors.black),) ,
          ),
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    height:120,
                    child:Center(
                        child:TextField(
                          controller: dateinput,
                          //editing controller of this TextField
                          decoration: InputDecoration(
                            //icon of text field
                              labelText: "Filter by date" ,
                              prefixIcon: Icon(Icons.calendar_today_outlined,color: AppColors.colorBlack300),
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
                        )
                    )
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter ticket ID",
                    prefixIcon: Icon(Icons.search,size: 30,),
                    enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                      borderSide: BorderSide(

                          color: AppColors.colorBlack300),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.colorBlack300)
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5,0,10.0,0),
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: 'Select status',
                      labelStyle: TextStyle(fontSize: 15,color: AppColors.colorBlack300),
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
                SizedBox(height: 10,),
                Divider(color: AppColors.colorBlack300,),
                SizedBox(height: 15,),


              ],
            ),
          ),
          SizedBox(height: 16.0,),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child:Text("Results",style: TextStyle(fontSize: 12,color: AppColors.colorBlack),)
            ,
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Text("dja")
              ],
            ),
          )








        ],
      ),
    );
  }
}
