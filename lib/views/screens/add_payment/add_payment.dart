import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/sign_up_successfull.dart';

import '../../../core/utils/app_colors.dart';
import '../auth/sign_up/sign_up_screen.dart';
class AddPayment extends StatefulWidget {
  const AddPayment({Key? key}) : super(key: key);

  @override
  _AddPaymentState createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  final _charitem=["Mobile","Bank transfer"];
  String _verticalchar="Mobile";
  int index=0;
  List dropDownData=[
    {"title":"Money","value":"1"},
    {"title":"card","value":"2"}
  ];
  String select="";
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(2),
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
             padding: EdgeInsets.fromLTRB(10, 0, 0,0),
             child: IconButton(
               onPressed: (){
                 Get.offAll(()=>SignUpSucessfull());

               },
                 icon: Icon(Icons.arrow_back,color: Colors.black,)),

           ),
           SizedBox(width: 10,),
           Padding(
             padding: EdgeInsets.only(top: 0),
             child:    Text("Back",style: TextStyle(fontSize: 16,color: Colors.black),) ,
           )


           
         ],
       ),
            SizedBox(height: 5,),
            Divider(color: AppColors.colorBlack300,),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 20),
                child: Text("Edit payment information",style: TextStyle(color: AppColors.colorBlack,fontSize: 22))),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("To create delivery orders, first you need to add a payment method. This payment method will be\n used to collect delivery charges. ",style: TextStyle(color: AppColors.colorBlack300,fontSize: 14),) ,
            ),
            SizedBox(height: 16,),
            Divider(color: AppColors.colorBlack300,),
            SizedBox(height: 16,),
    Padding(
        padding: EdgeInsets.only(left: 20),
          child: Text("Select payment method ",style: TextStyle(color: AppColors.colorBlack,fontSize: 16),)),
            SizedBox(height: 16,),
            RadioGroup<String>.builder(
              direction: Axis.horizontal,
              groupValue: _verticalchar,
              activeColor: AppColors.secondaryColor,
              horizontalAlignment: MainAxisAlignment.spaceAround,
              onChanged: (value) => setState(() {
                _verticalchar = value ?? '';
                index+=1;
                print(value);
                print(index);

              }),

              items: _charitem,
              textStyle: TextStyle(
                fontSize: 15,
                color:(_verticalchar=="Mobile" || _verticalchar=="Bank transfer") ?AppColors.colorBlack
                    :AppColors.colorBlack300,
              ),
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
            ),
            SizedBox(height: 20,),
            Visibility(
              visible: _verticalchar=="Mobile",
             child: Form(
               child: Column(
                 children: [

                   InputDecorator(
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
                                 child: Text(
                                   "Wallet provider",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                                 ),
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
                   SizedBox(
                     width: 370,

                     child: TextFormField(

                       decoration: InputDecoration(
                         suffixIcon: Image(image: AssetImage("assets/icons/sing.png"),),

                         label:Padding(
                           padding: const EdgeInsets.only(left:5),
                           child: Text("Phone account number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                           ),
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
                   SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(

                         onTap: (){},
                         child: Padding(
                           padding: EdgeInsets.only(left: 20),
                           child: Container(
                             height: MediaQuery.of(context).size.height*0.06,
                             width: MediaQuery.of(context).size.width*0.4,
                             decoration: BoxDecoration(
                                 color: AppColors.colorWhite,
                                 border: Border.all(color: AppColors.secondaryColor,width: 1),
                               borderRadius: BorderRadius.circular(5)
                             ),
                             child: Center(child: Text("Cancel",style: TextStyle(fontSize: 14,color: AppColors.secondaryColor),)),
                           ),
                         ),
                       ),
                       InkWell(

                         onTap: (){},
                         child: Padding(
                           padding: EdgeInsets.only(right: 20),
                           child: Container(
                             height: MediaQuery.of(context).size.height*0.06,
                             width: MediaQuery.of(context).size.width*0.4,
                             decoration: BoxDecoration(
                                 color: AppColors.secondaryColor,
                                 border: Border.all(color: AppColors.secondaryColor900,width: 1),
                                 borderRadius: BorderRadius.circular(5)
                             ),
                             child: Center(child: Text("Add",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),)),
                           ),
                         ),
                       )
                     ],
                   )

                 ],
               ),
             ),
            ),
            Visibility(
                visible: _verticalchar=="Bank transfer",
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                        child: TextFormField(

                          decoration: InputDecoration(


                            label:Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("Account name",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                              ),
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
                        padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                        child: TextFormField(

                          decoration: InputDecoration(


                            label:Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("Account number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                              ),
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
                                      child: Text(
                                        "Bank name",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                                      ),
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
                                      child: Text(
                                        "Select branch",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                                      ),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,20.0,0),
                        child: TextFormField(

                          decoration: InputDecoration(


                            label:Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("Routing number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
                              ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(

                            onTap: (){},
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.06,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                    color: AppColors.colorWhite,
                                    border: Border.all(color: AppColors.secondaryColor,width: 1),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("Cancel",style: TextStyle(fontSize: 14,color: AppColors.secondaryColor),)),
                              ),
                            ),
                          ),
                          InkWell(

                            onTap: (){
                              showDialog(
                                  context: context,
                                  builder: (ctx)=>AlertDialog(
                                    title: Padding(
                                      padding: const EdgeInsets.fromLTRB(20,70,20,0),
                                     child:Column(
                                       children: [
                                         Center(child: Text("\nAccount successfully",style: TextStyle(fontSize: 22,color: AppColors.colorGreen),),),
                                         Text("created",style: TextStyle(fontSize: 22,color: AppColors.colorGreen),),
                                       ],
                                     ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    content: Container(
                                      width: 250,
                                      height:120,

                                      child: Column(
                                        children: [
                                          Text("Your account is under review now. It will take up to 1 business day to get approval. After finishing the varification process, an.",
                                          style: TextStyle(fontSize: 13,color: AppColors.colorBlack300),),
                                          Text("email/sms will be sent to you",
                                          style: TextStyle(fontSize: 13,color: AppColors.colorBlack300),),
                                        SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,

                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(40, 0,0,0),
                                              child:  Text("Need any help?",style: TextStyle(fontSize: 13,color: Colors.black),),
                                            ),

                                            Text(" 09639-103314",style: TextStyle(fontSize: 13,color: AppColors.secondaryColor900),)
                                          ],
                                        ),
                                          Text("info@metroexpress.com.bd",style: TextStyle(fontSize: 13,color: AppColors.secondaryColor900),)

                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                        child: Center(child: Text("ok",style: TextStyle(fontSize: 14,color: Colors.black),)),
                                      )
                                    ],
                                  ));

                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.06,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryColor,
                                    border: Border.all(color: AppColors.secondaryColor900,width: 1),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("Add",style: TextStyle(fontSize: 14,color: AppColors.colorWhite),)),
                              ),
                            ),
                          )
                        ],
                      )


                    ],
                  ),
                )
            ),



          ],
        ),
      ),
    );
  }

}





//       Padding(
//         padding: EdgeInsets.only(left: 20),
//           child: Text("Edit payment information",style: TextStyle(color: AppColors.colorBlack,fontSize: 22),)),
//       SizedBox(height: 10,),
//       Padding(
//           padding: EdgeInsets.only(left: 20),
//           child: Text("To create delivery orders, first you need to add apayment method. This payment method will beused to collect delivery charges. ",style: TextStyle(color: AppColors.colorBlack300,fontSize: 14),)),
//       SizedBox(height: 10,),
//       Divider(color: AppColors.colorBlack300,),
//       SizedBox(height: 15,),
//       Padding(
//           padding: EdgeInsets.only(left: 20),
//           child: Text("Select payment method ",style: TextStyle(color: AppColors.colorBlack,fontSize: 16),)),
// SizedBox(height: 15,),
//
//
//
//
// Row(
//   children: [
//     Radio<Char>(
//
//       activeColor: AppColors.secondaryColor,
//       value: Char.Mobile,
//
//
//       groupValue: _character,
//       onChanged: (Char?value){
//         setState(() {
//           _character=value;
//           print(value);
//         });
//       },
//
//
//     ),
//     Text("Mobile",style: TextStyle(color:_character==Char.Mobile?AppColors.colorBlack:AppColors.colorBlack300),),
//     Radio<Char>(
//
//       activeColor: AppColors.secondaryColor,
//       value: Char.Banktransfer,
//
//
//       groupValue: _character,
//       onChanged: (Char?value){
//         setState(() {
//           _character=value;
//           print(value);
//         });
//       },
//
//
//     ),
//     Text("Bank transfer",style: TextStyle(color:_character==Char.Banktransfer?AppColors.colorBlack:AppColors.colorBlack300),)
//
//   ],
