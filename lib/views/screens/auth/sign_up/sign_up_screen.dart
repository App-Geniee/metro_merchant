import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_merchant/views/screens/auth/sign_in/sign_in_screen.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/password.dart';
import 'package:metro_merchant/views/screens/auth/sign_up/product_list.dart';

import '../../../../core/utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    List dropDownData=[
      {"title":"Money","value":"1"},
      {"title":"card","value":"2"}
    ];
    String select="";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/shaplogin.png"),
                          fit: BoxFit.fill
                      )
                  ),
                  

                  // child: Image(
                  //   image: AssetImage("assets/images/shaplogin.png"),
                  // ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(120,180,0,0),
                  child: Text("Add your information",style: TextStyle(fontSize: 14,color: Colors.white),),
                ),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(2,60, 0, 0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Get.offAll(()=>SignInScreen());
                      },
                          icon: Icon(Icons.arrow_back,color: Colors.white,)),
                      SizedBox(width: 12,),
                      Text("Back",style: TextStyle(color: Colors.white,fontSize: 16),),

                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 62),

                    width: 109,
                    height: 49.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:  AssetImage("assets/images/mainlogo.png")
                        )
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(height: 20,),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child:Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,20.0,0),
                            child: TextFormField(

                              decoration: InputDecoration(


                                label:Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Owner name",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
                            padding: const EdgeInsets.fromLTRB(10,0,20.0,0),
                            child: TextFormField(

                              decoration: InputDecoration(


                                label:Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Shop name",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
                            padding: const EdgeInsets.fromLTRB(10,0,20.0,0),
                            child: TextFormField(

                              decoration: InputDecoration(


                                label:Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Email",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
                            padding: const EdgeInsets.fromLTRB(10,0,20.0,0),
                            child: TextFormField(

                              decoration: InputDecoration(


                                label:Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Page link/website link",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
                            padding: const EdgeInsets.fromLTRB(10,0,20.0,0),
                            child: TextFormField(

                              decoration: InputDecoration(


                                label:Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Enter phone number",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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

                          InkWell(
                            onTap: (){
                              Get.offAll(()=>ProductCatrogory());
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,10.0,0),
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
                                            padding: EdgeInsets.fromLTRB(0,0,0,0),
                                            child: Text(
                                              "Product category",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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


                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,20.0,0),
                            child: TextFormField(

                              decoration: InputDecoration(


                                label:Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("Pickup address",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,10.0,0),
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
                                            padding: EdgeInsets.fromLTRB(0,0,0,0),
                                            child: Text(
                                              "Select area",style: TextStyle(fontSize: 12,color: AppColors.colorBlack300),
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
                          )







                        ],
                      ),
                    )
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20),
              child: CustomButton(context, 'Create account', () {Get.offAll(()=>Password()); }, AppColors.secondaryColor500),
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
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward,color: Colors.white,),
                )

              ],

            ),
          ),

        ),
      ) ,
    );
  }
}
